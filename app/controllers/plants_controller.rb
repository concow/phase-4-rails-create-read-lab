class PlantsController < ApplicationController

    # route is GET /plants
    def index 
        plants = Plant.all
        render json: plants
    end
    # route is GET /plants/:id
    def show 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
    # route is POST /plants
    def create 
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
