class Payment < ActiveRecord::Base
	before_save :update_amount
	belongs_to :user
	belongs_to :event

	def update_amount
    self.amount = (self.event.amount/self.event.users.size)
	end
end
