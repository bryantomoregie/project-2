class ReviewsController < ApplicationController

    skip_before_action(:check_login, only: [:index, :show])

    def show 
        @review = Review.find(params[:id])
    end

    def index
        @reviews = Review.all 
    end

end 