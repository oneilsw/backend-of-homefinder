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
        viewing.update(update_params)
        if viewing.valid?
            render json: viewing
        else
            render json: {errors: viewing.errors}
        end
    end 

    def destroy
        viewing = Viewing.find(params[:id])
        viewing.destroy
    end

    def listing_viewings
        listing = ApartmentListing.find(params[:id])
        viewings = listing.viewings
        render json: viewings
    end

    def tenant_viewings
        tenant = Tenant.find(params[:id])
        viewings = tenant.viewings
        render json: viewings
    end

    def agent_showings
        agent = Agent.find(params[:id])
        showings = agent.showings
        render json: showings
    end 

    def pending_showings
        agent = Agent.find(params[:id])
        showings = agent.pending_showings
        render json: showings
    end 

    private

    def update_params
        params.permit(:confirmed)
    end 

    def viewing_params
        params.permit(:apartment_listing_id, :tenant_id, :date, :time, :note)
    end 
end
