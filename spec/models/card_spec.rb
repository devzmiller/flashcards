require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'attributes' do
    let!(:card) {Card.new(question: "Question", answer: "Answer")}
    it 'has a question' do
      expect(card.question).to eq "Question"
    end
    it 'has an answer' do
      expect(card.answer).to eq "Answer"
    end
    it 'is valid with a question and an answer' do
      expect(card).to be_valid
    end
    it 'is invalid without a question' do
      card.question = nil
      expect(card).to_not be_valid
    end
    it 'is invalid without an answer' do
      card.answer = nil
      expect(card).to_not be_valid
    end
  end
end
