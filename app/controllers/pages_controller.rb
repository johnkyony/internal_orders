class PagesController < ApplicationController
  def home
    @oders = Order.all
  end
end
