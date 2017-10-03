class CardsController < ApplicationController
  before_action :set_card, only: [:destroy,:update,:show,:edit]   

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def show
  end

  def edit
    
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end

  def update
    if @card.update(card_params)
      redirect_to @card
    else 
      render 'edit'
    end
  end

  def destroy 
    @card.destroy

    redirect_to cards_path
  end

  def set_card
    @card = Card.find(params[:id])
  end

  private 
    def card_params
      params.require(:card).permit(:original_text, :translated_text, :review_date)
    end
  end


