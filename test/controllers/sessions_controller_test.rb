require "test_helper"

describe SessionsController do
  it "should get new" do
    get sessions_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get sessions_create_url
    value(response).must_be :success?
  end

  it "should get delete" do
    get sessions_delete_url
    value(response).must_be :success?
  end

end
