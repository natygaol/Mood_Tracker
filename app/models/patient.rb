class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :posts
  has_many :before_exercises
  has_many :after_exercises
end
