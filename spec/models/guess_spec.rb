require 'rails_helper'

RSpec.describe Guess, type: :model do
  let!(:deck) {Deck.create!(name: "deck")}
  let!(:card) { Card.create!(question: "Question", answer: 'Answer', deck: deck) }
  let!(:guess) { Guess.create!(card: card, answer: "Answer") }

  describe "associations" do
    it 'belongs to a card' do
      expect(card.guesses).to include(guess)
    end
  end

  describe "#check_guess" do
    it 'returns true id the guess is correct' do
      guess.check_guess
      expect(guess.correct).to be true
    end
    it 'returns false if the guess is wrong' do
      guess.answer = 'Blah'
      guess.check_guess
      expect(guess.correct).to be false
    end
  end
end
