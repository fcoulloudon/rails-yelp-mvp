class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }
  validates :rating, numericality: true
  validates :rating, presence: true

end
