class Admin::DecksController < ActionController::Base
    before_action :set_deck, only: [:show, :edit, :update, :destroy]
    
      # GET /decks
    def index
      render json: Deck.all
    end
  
    # GET /decks/:deck_id
    def show
      render json: @deck
    end
  
    # POST /decks
    def create
      deck = Deck.new(deck_params)
  
      if deck.save
        render json: deck
      else
        render deck.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /decks/:deck_id
    def update
      if @deck.update(deck_params)
        render json: @deck
      else
        render json: @deck.errors, status: :unprocessable_entity
      end
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
          :prompt
        )
      end
  end
  
  