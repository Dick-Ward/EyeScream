class Flavor < ApplicationRecord
  belongs_to :truck
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :color, presence: true

  #There is a way to do one-line validations, but like, why?

end
