class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
    @guess = Guess.new
  end

end
