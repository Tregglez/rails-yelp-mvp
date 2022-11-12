class Review < ApplicationRecord
  belongs_to :restauraunt

  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: (0..5), only_integer: true }

end
