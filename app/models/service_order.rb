class ServiceOrder < ApplicationRecord
	belongs_to :user
	belongs_to :service

	# For å lage validering må vi finne ut hvordan en service order skal se ut.
	validates :user_id, :service_id, :start_service_order, :end_service_order, presence: true

end
