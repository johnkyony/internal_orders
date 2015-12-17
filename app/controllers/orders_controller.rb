class OrdersController < ApplicationController
    def new
        @order = Order.new
    end
    def create
        @order = Order.create(order_params)
        @order.user_id = current_user.id
        @orders  = Order.all
    end
    def destroy
        
    end
    private
    def order_params
        params.require(:order).permit(:department_id,:type_id,:problem,:user_id)
        
    end
end
