class Review < ActiveRecord::Base

    belongs_to :user
    belongs_to :product
    # belongs_to :product
    validates :user_id, presence: true
    validates :product_id, presence: true
    # validates :rating
    # validates :description
end