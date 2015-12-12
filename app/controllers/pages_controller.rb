class PagesController < ApplicationController
  def home
    @io_requests = IO_REQUEST.all
  end
end
