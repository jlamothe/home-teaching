class Family < ActiveRecord::Base
  has_many :users
  belongs_to :companionship

  validates :companionship, null: false
end
