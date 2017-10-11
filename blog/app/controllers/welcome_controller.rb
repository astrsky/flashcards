class WelcomeController < ApplicationController
  def index
  	@message = "Первый в мире удобный менеджер флеш-карточек. Именно так."

    @card = Card.random_card
  end

  def check
    @translated_text = params[:original_text]
    if @card.chech_translation 
      redirect_to :back,
       flash[:notice] =  "Правильно!"
    else 
      redirect_to :back, 
      flash[:notice] =  "Ошибка!"
    end
  end

  private 
    
  end
 