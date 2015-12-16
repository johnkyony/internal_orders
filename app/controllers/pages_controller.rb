class PagesController < ApplicationController
  def home
    @oders = Order.all
  end
  
  def type
    @types = Type.all
    
  end
  
  def department
    @departments = Department.all
    
  end
end
