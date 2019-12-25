class ViewingsController < ApplicationController
    def index
        viewings = Viewing.all
        render json: viewings
    end 

    def show 
        viewing = Viewing.find(params[:id])
        render json: viewing
    end 

    def create 
        viewing = Viewing.create(viewing_params)
        if viewing.valid?
            render json: viewing
        else
            render json: {errors: viewing.errors}
        end
    end 

    def update
        viewing = Viewing.find(params[:id])
        viewing.update(viewing_params)
        if viewing.valid?
            render json: viewing
        else
            render json: {errors: viewing.errors}
        end
    end 

    private

    def viewing_params
        params.permit(:listing_id, :tenant_id, :date, :time, :confirmed)
    end 
end
