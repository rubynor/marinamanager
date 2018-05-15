# == Schema Information
#
# Table name: berth_orders
#
#  id        :bigint(8)        not null, primary key
#  berth_id  :bigint(8)
#  boat_id   :bigint(8)
#  season_id :bigint(8)
#  status_id :bigint(8)
#

class BerthOrder < ApplicationRecord

	belongs_to :boat
	belongs_to :season
  belongs_to :status

	attr_writer :current_step
	validates_presence_of :boat, :if => lambda { |b| b.current_step == "boat"}
	validates_presence_of :season, :if => lambda { |b| b.current_step == "season"}
	# binding.pry

	def current_step
		@current_step || steps.first
	end

	def steps
		%w[boat season confirmation]
	end

	def next_step
		self.current_step = steps[steps.index(current_step)+1]
	end

	def previous_step
		self.current_step = steps[steps.index(current_step)-1]
	end

	def first_step
		self.current_step = steps[0]
	end

	def first_step?
    current_step == steps.first
	end

	def last_step?
		current_step == steps.last
	end

	def all_valid?
		steps.all? do |step|
			self.current_step = step
			valid?
		end
	end

end
