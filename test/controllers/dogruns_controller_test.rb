require 'test_helper'

class DogrunsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dogruns_index_url
    assert_response :success
  end

end
