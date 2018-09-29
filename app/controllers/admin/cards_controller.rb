class Admin::CardsController < ActionController::Base

  before_action :set_card, only: %i[show edit update destroy]

  # GET /cards
  def index
    @cards = Card.all
  end

  # GET /cards/:card_id
  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  # POST /cards
  def create
    @card = Card.new(card_params)
    redirect_to admin_cards_path if @card.save
  end

  def edit
    @card = Card.find(params[:id])
  end

  # PATCH/PUT /cards/:card_id
  def update
    redirect_to admin_card_path if @card.update(card_params)
  end

  # DELETE /cards/:card_id
  def destroy
    Card.find(params[:id]).destroy
    redirect_to admin_cards_path
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
      :min_players,
    )
  end

end
