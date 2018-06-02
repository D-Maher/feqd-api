require "test_helper"

class CardsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @card = cards(:one)
    @other_card = cards(:three)
  end

  test "should get all cards" do
    get cards_url
    assert_response :success
  end

  test "should get specific card based on a unique id" do
    get card_url(@card)
    assert_response :success
  end

  # test "should create a card" do

  # end

  # test "should update a card" do

  # end

  # test "should destroy a card" do

  # end

end
