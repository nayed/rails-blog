require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get hi" do
    get pages_hi_url
    assert_response :success
  end

end
