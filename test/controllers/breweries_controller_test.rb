require 'test_helper'

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brewery = breweries(:one)
  end

  test "should get index" do
    get breweries_url, as: :json
    assert_response :success
  end

  test "should create brewery" do
    assert_difference('Brewery.count') do
      post breweries_url, params: { brewery: { brewery_type: @brewery.brewery_type, city: @brewery.city, country: @brewery.country, latitude: @brewery.latitude, longitude: @brewery.longitude, name: @brewery.name, phone: @brewery.phone, postal_code: @brewery.postal_code, state: @brewery.state, street: @brewery.street, website_url: @brewery.website_url } }, as: :json
    end

    assert_response 201
  end

  test "should show brewery" do
    get brewery_url(@brewery), as: :json
    assert_response :success
  end

  test "should update brewery" do
    patch brewery_url(@brewery), params: { brewery: { brewery_type: @brewery.brewery_type, city: @brewery.city, country: @brewery.country, latitude: @brewery.latitude, longitude: @brewery.longitude, name: @brewery.name, phone: @brewery.phone, postal_code: @brewery.postal_code, state: @brewery.state, street: @brewery.street, website_url: @brewery.website_url } }, as: :json
    assert_response 200
  end

  test "should destroy brewery" do
    assert_difference('Brewery.count', -1) do
      delete brewery_url(@brewery), as: :json
    end

    assert_response 204
  end
end
