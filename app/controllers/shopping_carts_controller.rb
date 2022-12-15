class ShoppingCartsController < ApplicationController
    def create
        ShoppingCart.create(item_id: Item.find(params[:item_id]), user_id: Current.user.id) 
        redirect_to item_path(params[:item_id])
    end

    def index
        @shopping_cart= [ShoppingCart.where(user_id: Current.user)]
    end

end
