class AgentReviewsController < ApplicationController
    def index
        agent_reviews = AgentReview.all 
        render json: agentReviews
    end 

    def show
        agent_review = AgentReview.find(params[:id])
        render json: agentReview
    end 

    def create
        agent_review = AgentReview.create(ar_params)
        render json: agent_review
    end 

    def update
        agent_review = AgentReview.find(params[:id])
        agent_review.update(ar_params)
        if agent_review.valid?
            render json: agent_review
        else
            render json: {errors: agent_review.errors}
        end
    end 

    # def destroy
    # end 

    private

    def ar_params
        params.permit(:tenant_id, :agent_id, :rating, :text)
    end 
end
