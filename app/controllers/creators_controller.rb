class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
    render json:  @creators, each_serializer: CreatorSerializer
  end

  def show

  end

  def create
    #takes route logic
    creator = Creator.new(creator_params)

    if creator.save
      #created is a 201 status code that the request has succeeded and has led to the creation of a resource
      render json: creator, status: :created
    else 
      #.errors calls out all validation errors which is built into ruby
      #unprocessable_entity is a 422
      render json: creator.errors, status: :unprocessable_entity
    end

    def update

    end

    def destroy

    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_creator
    creator = Creator.find(params[:id])
  end

  # Only allow a list of trusted parameters.
  def creator_params
    params.require(:creator).permit(:name)
  end
end

