require "application_system_test_case"

class RestaurantLikesTest < ApplicationSystemTestCase
  setup do
    @restaurant_like = restaurant_likes(:one)
  end

  test "visiting the index" do
    visit restaurant_likes_url
    assert_selector "h1", text: "Restaurant Likes"
  end

  test "creating a Restaurant like" do
    visit restaurant_likes_url
    click_on "New Restaurant Like"

    check "Like" if @restaurant_like.like
    fill_in "Restaurant", with: @restaurant_like.restaurant_id
    fill_in "User", with: @restaurant_like.user_id
    click_on "Create Restaurant like"

    assert_text "Restaurant like was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant like" do
    visit restaurant_likes_url
    click_on "Edit", match: :first

    check "Like" if @restaurant_like.like
    fill_in "Restaurant", with: @restaurant_like.restaurant_id
    fill_in "User", with: @restaurant_like.user_id
    click_on "Update Restaurant like"

    assert_text "Restaurant like was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant like" do
    visit restaurant_likes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant like was successfully destroyed"
  end
end
