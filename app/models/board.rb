class Board < ApplicationRecord
  validates :title, presence: true
  validates :background, inclusion: { in: %w[white red green blue yellow], message: "%{value} is not a valid color" }
end
