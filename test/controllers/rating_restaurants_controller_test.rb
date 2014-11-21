require 'test_helper'

class RatingRestaurantsControllerTest < ActionController::TestCase
  setup do
    @rating_restaurant = rating_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rating_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rating_restaurant" do
    assert_difference('RatingRestaurant.count') do
      post :create, rating_restaurant: { comments: @rating_restaurant.comments, star: @rating_restaurant.star }
    end

    assert_redirected_to rating_restaurant_path(assigns(:rating_restaurant))
  end

  test "should show rating_restaurant" do
    get :show, id: @rating_restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rating_restaurant
    assert_response :success
  end

  test "should update rating_restaurant" do
    patch :update, id: @rating_restaurant, rating_restaurant: { comments: @rating_restaurant.comments, star: @rating_restaurant.star }
    assert_redirected_to rating_restaurant_path(assigns(:rating_restaurant))
  end

  test "should destroy rating_restaurant" do
    assert_difference('RatingRestaurant.count', -1) do
      delete :destroy, id: @rating_restaurant
    end

    assert_redirected_to rating_restaurants_path
  end
end
