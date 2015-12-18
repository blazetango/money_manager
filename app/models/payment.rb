class Payment < ActiveRecord::Base
	before_save :update_amount
	belongs_to :user
	belongs_to :event

  PENDING_STATUS = 'Pending'
  AWAITING_STATUS = 'Awaiting'
  PAID_STATUS = 'Paid'
	def update_amount
    self.amount = (self.event.amount/self.event.users.size)
	end
end
