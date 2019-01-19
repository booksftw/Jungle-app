class ReviewsController < ApplicationController
    belongs_to :product

    def create
        render 'HI'
    end
end
