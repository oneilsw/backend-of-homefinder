class NeighborhoodsController < ApplicationController
    def index
        neighborhoods = Neighborhood.all
        render json: neighborhoods
    end 

    def show 
        neighborhood = Neighborhood.find(params[:id])
        render json: neighborhood
    end 

    def create 
        neighborhood = Neighborhood.create(neighborhood_params)
        if neighborhood.valid?
            render json: neighborhood
        else
            render json: {errors: neighborhood.errors}
        end
    end 

    def update
        neighborhood = Neighborhood.find(params[:id])
        neighborhood.update(neighborhood_params)
        if neighborhood.valid?
            render json: neighborhood
        else
            render json: {errors: neighborhood.errors}
        end
    end 

    private

    def neighborhood_params
        params.permit(:name, :detail)
    end 
end
