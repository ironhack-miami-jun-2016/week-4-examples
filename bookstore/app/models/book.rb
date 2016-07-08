class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :year, numericality: true
  validates :rating, numericality: { greater_than: 0, less_than: 5 }
end
