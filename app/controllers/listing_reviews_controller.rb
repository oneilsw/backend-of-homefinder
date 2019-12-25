class ListingReviewsController < ApplicationController
    def index
        listing_reviews = ListingReview.all
        render json: listing_reviews
    end 

    def show
        listing_review = ListingReview.find(params[:id])
        render json: listing_review
    end 

    def create
        listing_review = ListingReview.create(lr_params)
        if listing_review.valid?
            render json: listing_review
        else
            render json: {errors: listing_review.errors}
        end
    end 

    def update
        listing_review = ListingReview.find(params[:id])
        listing_review.update(lr_params)
        if listing_review.valid?
            render json: listing_review
        else
            render json: {errors: listing_review.errors}
        end
    end 

    private

    def lr_params
        params.permit(:listing_id, :tenant_id, :text, :rating)
    end
end
