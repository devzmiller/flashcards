class Round < ApplicationRecord
  belongs_to :deck

  def unanswered_cards
    cards = []
    self.deck.cards.each do |card|
      if card.guesses.length == 0
        cards << card
      else
        correct = false
        card.guesses.each do |guess|
          if guess.correct == true
            correct = true
          end
        end

        if correct == false
          cards << card
        end
      end
    end
  end
end
