class Email < ActiveRecord::Base
  validates :address, null: false, uniqueness: true

  def user
    User.find_by_email self.address
  end
end
