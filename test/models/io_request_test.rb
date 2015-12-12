require "test_helper"

describe IoRequest do
  let(:io_request) { IoRequest.new }

  it "must be valid" do
    value(io_request).must_be :valid?
  end
end
