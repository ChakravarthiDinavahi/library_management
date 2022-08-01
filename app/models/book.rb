class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :publisher, presence: true
  validates :copies, presence: true, numericality: {only_integer: true}
  validates :cost, presence: true, numericality: true
end
