  class GamesController < ApplicationController
    def index
      @games = Game.all
      render json:  @games, each_serializer: GameSerializer
    end

    def show
     render json: @game, serializer: GameSerializer
     render json: @game, serializer: CreatorSerializer
    end


    def create
      #takes route logic
      @game = Game.new(game_params)

      if @game.save
        #created is a 201 status code that the request has succeeded and has led to the creation of a resource
        render json: @game, status: :created
      else 
        
        #.errors calls out all validation errors which is built into ruby
        #unprocessable_entity is a 422
        render json: @game.errors, status: :unprocessable_entity
      end
    end

    def update
      if @game.update(game_params)
        render json: @game
      else
        render json: @game.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @game = Game.find(params[:id]).destroy!
      #no_content is a 204. No need for client
      head :no_content
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters.
    def game_params
      params.require(:game).permit(:title, :publisher, :publish_date, :player_count, :creator_id, creator_attributes: [:name] )
    end
  end

