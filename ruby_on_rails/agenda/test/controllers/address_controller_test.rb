require 'test_helper'

class AddressControllerTest < ActionDispatch::IntegrationTest
  test "should get number" do
    get address_number_url
    assert_response :success
  end

end
