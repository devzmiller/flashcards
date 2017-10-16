require 'rails_helper'

RSpec.describe Deck, type: :model do
  let!(:deck) {Deck.create!(name: "deck")}
  let!(:card) {Card.new(question: "Question", answer: "Answer", deck: deck)}

  it 'has many cards' do
    expect(deck.cards).to all be_a Card
  end
  it 'is valid with a name' do
    expect(deck).to be_valid
  end
  it 'is invalid without a name' do
    deck.name = nil
    expect(deck).to_not be_valid
  end
end
