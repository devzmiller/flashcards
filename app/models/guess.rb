class Guess < ApplicationRecord
  belongs_to :card

  def check_guess
    if self.answer == self.card.answer
      self.correct = true
    else
      self.correct = false
    end
  end
end
