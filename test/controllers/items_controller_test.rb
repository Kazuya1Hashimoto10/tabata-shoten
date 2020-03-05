require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get indexf" do
    get items_indexf_url
    assert_response :success
  end

end
