class Admin::DecksController < ActionController::Base

  before_action :set_deck, only: %i[show edit update destroy]

  # GET /decks
  def index
    @decks = Deck.all
  end

  # GET /decks/:deck_id
  def show
    @deck = Deck.find(params[:id])
  end

  # POST /decks
  def create
    @deck = deck.new(deck_params)
    redirect_to admin_decks_path if @deck.save
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  # PATCH/PUT /decks/:deck_id
  def update
    redirect_to admin_deck_path if @deck.update(deck_params)
  end

  # DELETE /decks/:deck_id
  def destroy
    @deck.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deck
    @deck = Deck.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def deck_params
    params.require(:deck).permit(
      :title,
      :description,
    )
  end

end
