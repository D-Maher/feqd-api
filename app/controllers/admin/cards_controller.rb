class Admin::CardsController < Admin::AdminController

  before_action :set_card, only: %i[show edit update destroy]

  # GET /cards
  def index
    @cards = Card.all
  end

  # GET /cards/1
  def show; end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit; end

  # POST /cards
  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to admin_card_path(@card), notice: "Card was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      redirect_to admin_card_path(@card), notice: "Card was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
    redirect_to admin_cards_path, notice: "Card was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Card.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def card_params
    params.require(:card).permit(:prompt, :min_players)
  end

end
