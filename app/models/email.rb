class Email < ActiveRecord::Base
  validates :address, null: false, uniqueness: true

  def user
    User.where(email: self.address).first
  end
end
