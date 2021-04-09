class UserInfo < ApplicationRecord

  belongs_to :user
  has_many :before_exercises
  has_many :after_exercises

end
