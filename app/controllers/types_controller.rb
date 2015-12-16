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
        
    end
    
    private
    def type_params
        params.require(:type).permit(:problem_name)
        
    end
end
