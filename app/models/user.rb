class User < ActiveRecord::Base
  validates :name, null: false
  validates :email, null: false, uniqueness: true
end
