class ServiceOrder < ApplicationRecord
	belongs_to :user
	belongs_to :service
	belongs_to :order

	validates :user_id, :service_id, presence: true

end
