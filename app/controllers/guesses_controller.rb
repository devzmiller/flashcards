class GuessesController < ApplicationController
  def create
    params.permit!
    @card = Card.find(params[:card_id])
    @guess = Guess.new(params[:guess])
    @guess.card = @card
    @guess.check_guess
    @guess.save
    render 'cards/show'
  end
end
