require 'test_helper'

class RestaurantLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_like = restaurant_likes(:one)
  end

  test "should get index" do
    get restaurant_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_like_url
    assert_response :success
  end

  test "should create restaurant_like" do
    assert_difference('RestaurantLike.count') do
      post restaurant_likes_url, params: { restaurant_like: { like: @restaurant_like.like, restaurant_id: @restaurant_like.restaurant_id, user_id: @restaurant_like.user_id } }
    end

    assert_redirected_to restaurant_like_url(RestaurantLike.last)
  end

  test "should show restaurant_like" do
    get restaurant_like_url(@restaurant_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_like_url(@restaurant_like)
    assert_response :success
  end

  test "should update restaurant_like" do
    patch restaurant_like_url(@restaurant_like), params: { restaurant_like: { like: @restaurant_like.like, restaurant_id: @restaurant_like.restaurant_id, user_id: @restaurant_like.user_id } }
    assert_redirected_to restaurant_like_url(@restaurant_like)
  end

  test "should destroy restaurant_like" do
    assert_difference('RestaurantLike.count', -1) do
      delete restaurant_like_url(@restaurant_like)
    end

    assert_redirected_to restaurant_likes_url
  end
end
