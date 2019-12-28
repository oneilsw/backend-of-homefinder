class BuildingsController < ApplicationController
    def index
        buildings = Building.all
        render json: buildings
    end 

    def show
        building = Building.find(params[:id])
        render json: building
    end 

    def create
        building = Building.create(building_params)
        if building.valid?
            render json: building
        else
            render json: {errors: buiilding.errors}
        end
    end 

    def update 
        building = Building.find(params[:id])
        building.update(building_params)
        if building.valid?
            render json: building
        else
            render json: {errors: "This Update Did Not Work"}
        end
    end 

    private

    def building_params
        params.permit(:neighborhood, :address, :amount_of_apts, :year_built, :elevator_status, :super_status, :cross_streets)
    end
end
