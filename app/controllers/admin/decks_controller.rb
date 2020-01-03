class Admin::DecksController < Admin::AdminController

  before_action :set_deck, only: %i[show edit update destroy]

  # GET /decks
  def index
    @decks = Deck.all
  end

  # GET /decks/:deck_id
  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  # POST /decks
  def create
    @deck = Deck.new(deck_params)
    redirect_to admin_decks_path if @deck.save
  end

  def edit
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    @card_memberships = @deck.card_memberships.includes(:card)
    @card_membership = CardMembership.new
    @cards_not_in_deck = Card.all - @cards
  end

  # PATCH/PUT /decks/:deck_id
  def update
    redirect_to admin_deck_path if @deck.update(deck_params)
  end

  # DELETE /decks/:deck_id
  def destroy
    Deck.find(params[:id]).destroy
    redirect_to admin_decks_path
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
