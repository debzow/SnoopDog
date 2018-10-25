class Dog < ApplicationRecord
  belongs_to :stroll
  belongs_to :city
  has_many :dogsitters, through: :stroll
end
