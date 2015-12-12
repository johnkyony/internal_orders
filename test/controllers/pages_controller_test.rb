require "test_helper"

describe PagesController do
  it "should get home" do
    get :home
    value(response).must_be :success?
  end

end
