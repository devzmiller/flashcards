class Card < ApplicationRecord
  validates :question, :answer, presence: true
end
