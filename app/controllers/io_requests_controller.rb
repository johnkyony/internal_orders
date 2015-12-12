class IoRequestsController < ApplicationController
    
    def index
        @io_requests = IO_REQUEST.all
    end
end
