class ReviewsController < ApplicationController

    def index
       @reviews = Review.all 
    end

    def show
        find_review
    end

    def edit
        find_review
    end

    def new
        @users= User.all
        @soups= Soup.all
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to @review
    end

    def update
        find_review
        @review.update(review_params)
        redirect_to @review
    end

    def destroy
        find_review
        @review.destroy
        redirect_to reviews_path
    end

    private

    def review_params
        #byebug
        params.require(:review).permit(:rating, :comment, :user_id, :soup_id)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
