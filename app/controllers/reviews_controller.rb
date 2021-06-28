class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @restaurant = Filme.find(params[:filme_id])
    end

    def create
        @review = Review.new(review_params)
        @filme = Filme.find(params[:filme_id])
        @review.filme = @filme
        @review.user = current_user
        @review.save
        redirect_to filme_path(@filme)
    end

    def hide
        @review = Review.find(params[:review_id])
        @review.visible = false
        @review.save
        redirect_to filme_path(@review.filme)
    end

    private def review_params
        params.require(:review).permit(:content, :rating)
    end

end
