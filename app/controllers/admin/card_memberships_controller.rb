class Admin::CardMembershipsController < Admin::AdminController

  before_action :set_deck, only: :create
  before_action :set_card, only: :create

  # POST /card_membership
  def create
    card_membership = CardMembership.new(deck: @deck, card: @card)

    if card_membership.save
      redirect_to edit_admin_deck_path(card_membership.deck)
    else
      render card_membership.errors, status: :unprocessable_entity
    end
  end

  # DELETE /card_membership/:id
  def destroy
    @card_membership = CardMembership.find(params[:id])
    deck = @card_membership.deck
    @card_membership.destroy
    redirect_to edit_admin_deck_path(deck)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deck
    @deck = Deck.find(params[:card_membership][:deck_id])
  end

  def set_card
    @card = Card.find(params[:card_membership][:card_id])
  end

  # Only allow a trusted parameter "white list" through.
  def deck_params
    params.require(:deck).permit(
      :prompt,
    )
  end

end
