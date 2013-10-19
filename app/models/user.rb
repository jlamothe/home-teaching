class User < ActiveRecord::Base
  belongs_to :companionship

  validates :name, null: false
  validates :email, null: false, uniqueness: true
end
