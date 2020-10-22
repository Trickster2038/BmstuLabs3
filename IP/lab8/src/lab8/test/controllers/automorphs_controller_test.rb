require 'test_helper'

class AutomorphsControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get automorphs_input_url
    assert_response :success
  end

  test "should get view" do
    get automorphs_view_url
    assert_response :success
  end

end
