class GuessesController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @guess = Guess.new(params.require(:guess).permit(:answer))
    @guess.card = @card
    @guess.check_guess
    @guess.save
    render 'cards/show'
  end
end
