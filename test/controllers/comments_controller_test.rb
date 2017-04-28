require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get _comments" do
    get comments__comments_url
    assert_response :success
  end

  test "should get _form" do
    get comments__form_url
    assert_response :success
  end

end
