class ApartmentListingsController < ApplicationController
    def index
        apartment_listings = ApartmentListing.all
        render json: apartment_listings 
    end 

    def show 
        apartment_listing = ApartmentListing.find(params[:id])
        render json: apartment_listing
    end 

    def create
        apartment_listing = ApartmentListing.create(apartment_listing_params)
        if apartment_listing.valid?
            render json: apartment_listing
        else
            render json: {errors: apartment_listing.errors}
        end
    end 

    def update
        apartment_listing = ApartmentListing.find(params[:id])
        apartment_listing.update(apartment_listing_params)
        if apartment_listing.valid?
            render json: apartment_listing
        else
            render json: {errors: apartment_listing.errors}
        end
    end 

    def agent_listings
        agent = Agent.find(params[:id])
        listings = agent.apartment_listings
        render json: listings
    end 

    private

    def apartment_listing_params
        params.permit(:apartment, :rent, :lease_length, :broker_fee, :availability_date, :available, :bedroom_count, :bathroom_count, :image, :summary, :building_id, :agent_id)
    end 
end
