class Admin::DecksController < Admin::AdminController

  before_action :set_deck, only: %i[show edit update destroy]

  # GET /decks
  def index
    @decks = Deck.all
  end

  # GET /decks/1
  def show; end

  # GET /decks/new
  def new
    @deck = Deck.new
  end

  # GET /decks/1/edit
  def edit
    @cards = @deck.cards
    @card_memberships = @deck.card_memberships.includes(:card)
    @card_membership = CardMembership.new
    @cards_not_in_deck = Card.all - @cards
  end

  # POST /decks
  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      redirect_to admin_deck_path(@deck), notice: "Deck was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /decks/1
  def update
    if @deck.update(deck_params)
      redirect_to admin_deck_path(@deck), notice: "Deck was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /decks/1
  def destroy
    @deck.destroy
    redirect_to admin_decks_path, notice: "Deck was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deck
    @deck = Deck.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def deck_params
    params.require(:deck).permit(:title, :description, :min_players)
  end

end
