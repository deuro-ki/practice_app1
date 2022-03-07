require 'test_helper'

class AppPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get app_pages_top_url
    assert_response :success
  end

end
