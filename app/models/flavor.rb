class Flavor < ApplicationRecord
  belongs_to :truck
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :color, presence: true

end
