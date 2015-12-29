class TypesController < ApplicationController
    def index
        @types = Type.all
        
    end
    
    def new
    
        @type = Type.new
    end
    
    def create
        @type = Type.create(type_params)
        redirect_to root_path
        @types = Type.all
    end
    def destroy
        @type = Type.find(params[:id])
        @type.destroy
        @types = Type.all
        
    end
    def edit
        @type = Type.find(params[:id])
    end
    
    private
    def type_params
        params.require(:type).permit(:name)
        
    end
end
