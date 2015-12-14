class PagesController < ApplicationController
  def home
    @oder = Orders.all
  end
end
