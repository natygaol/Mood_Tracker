class Doctor < ApplicationRecord
  has_many :patients
  has_many :posts
end
