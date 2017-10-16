require 'rails_helper'

RSpec.describe Guess, type: :model do
  let!(:card) { Card.create!(question: "Question", answer: 'Answer') }
  let!(:guess) { Guess.create!(card: card, answer: "Answer", correct: true) }

  describe "associations" do
    it 'belongs to a card' do
      expect(card.guesses).to include(guess)
    end
  end
end
