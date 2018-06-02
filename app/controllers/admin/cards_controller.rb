class Admin::CardsController < ActionController::Base
    before_action :set_card, only: [:show, :edit, :update, :destroy]
  
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
      if @card.save
        redirect_to admin_cards_path
      end
    end
  
    # PATCH/PUT /cards/:card_id
    def update
      if @card.update(card_params)
        redirect_to @card
      else
        
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
          :prompt
        )
      end
  end
  