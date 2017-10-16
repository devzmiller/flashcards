class GuessesController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @guess = Guess.new(params[:guess])
    @guess.correct
  end
end
