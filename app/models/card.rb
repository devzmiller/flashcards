class Card < ApplicationRecord
  has_many :guesses
  validates :question, :answer, presence: true
end
