class OrdersController < ApplicationController
    def new
        @order = Order.new
        render :show_form
    end
    def create
        @order = Order.create(order_params)
        @order.user_id = current_user.id
        @orders  = Order.all
        render :hide_form
    end
    
    def edit 
        @order = Order.edit(params[:id])
        render :show_form
    end
    def update
      @order = Order.find(params[:id])
      @order.update_attributes(order_params)
      
    end
        
        
    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        @orders = Order.all
        
    end
    private
    def order_params
        params.require(:order).permit(:department_id,:type_id,:problem,:user_id , :completed)
        
    end
end
