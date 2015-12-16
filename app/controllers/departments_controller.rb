class DepartmentsController < ApplicationController
    
   
    
    def new
        @department = Department.new
    end
    
    def create
        @departments = Department.create(department_params)
        redirect_to root_path
    end
    
    private
    def department_params
        params.require(:department).permit(:name)
    end
end
