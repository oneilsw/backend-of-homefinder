class ApartmentListingsController < ApplicationController
    def index
        listings = Listings.all
        render json: listings 
    end 

    def show 
        listing = Listing.find(params[:id])
        render json: listing
    end 

    def create
        listing = Listing.create(listing_params)
        if listing.valid?
            render json: listing
        else
            render json: {errors: listing.errors}
        end
    end 

    def update
        listing = Listing.find(params[:id])
        listing.update(listing_params)
        if listing.valid?
            render json: listing
        else
            render json: {errors: listing.errors}
        end
    end 

    private

    def listing_params
        params.permit(:number, :price, :lease_length, :broker_fee, :availability_date, :available_status, :bedroom_count, :bathroom_count, :image, :rating_avg, :building_id, :agent_id)
    end 
end
