class CardsController < ApplicationController

  before_action :set_card, only: %i[show edit update destroy]

  # GET /cards
  def index
    render json: Card.all
  end

  # GET /cards/:card_id
  def show
    render json: @card
  end

  # POST /cards
  def create
    card = Card.new(card_params)

    if card.save
      render json: card
    else
      render card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/:card_id
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/:card_id
  def destroy
    @card.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Card.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def card_params
    params.require(:card).permit(
      :prompt,
    )
  end

end
