class Event < ActiveRecord::Base
  after_save :divide_money
  has_many :payments
  has_many :users, through: :payments

  def divide_money
   users = Payment.where(event_id: self.id)
   users.each do |user|
    user.amount = ((self.amount)/(users.count))
    user.save
   end
  end
end
