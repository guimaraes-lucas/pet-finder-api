class TypePetsController < ApplicationController
  before_action :set_type_pet, only: [:show, :update, :destroy]

  # GET /type_pets
  def index
    @type_pets = TypePet.all

    render json: @type_pets
  end

  # GET /type_pets/1
  def show
    render json: @type_pet
  end

  # POST /type_pets
  def create
    @type_pet = TypePet.new(type_pet_params)

    if @type_pet.save
      render json: @type_pet, status: :created, location: @type_pet
    else
      render json: @type_pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_pets/1
  def update
    if @type_pet.update(type_pet_params)
      render json: @type_pet
    else
      render json: @type_pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_pets/1
  def destroy
    @type_pet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_pet
      @type_pet = TypePet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_pet_params
      params.require(:type_pet).permit(:name)
    end
end
