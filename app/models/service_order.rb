class ServiceOrder < ApplicationRecord
	belongs_to :user
	belongs_to :service

	validates :user_id, :service_id, :start_service_order, :end_service_order, presence: true

	scope :overlaps, ->(start_service_order, end_service_order) do
		where "((start_service_order <= ?) AND (end_service_order >= ?))", end_service_order, start_service_order
	end

	def overlaps?
		overlaps.exists?
	end

	def overlaps
		siblings.overlaps start_service_order, end_service_order
	end

	validate :not_overlap

	def not_overlap
		errors.add(:base, 'Kun én tjeneste av samme type er mulig i et gitt tidsrom') if overlaps?
	end

	def siblings
		ServiceOrder.where('user_id = ? AND service_id = ?', user_id, service_id)
	end
end
