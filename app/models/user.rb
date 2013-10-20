class User < ActiveRecord::Base
  belongs_to :companionship
  belongs_to :family

  validates :name, null: false
  validates :email, null: false, uniqueness: true
end
