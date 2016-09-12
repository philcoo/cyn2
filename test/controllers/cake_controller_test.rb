require 'test_helper'

class CakeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cake_index_url
    assert_response :success
  end

end
