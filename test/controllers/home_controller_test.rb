require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "index action should be a success" do
    get :favourites_url
    assert_response :success
  end

end
