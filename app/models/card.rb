class Card < ApplicationRecord
  has_many :guesses
  belongs_to :deck
  validates :question, :answer, :deck, presence: true
end
