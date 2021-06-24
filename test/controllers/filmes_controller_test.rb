require "test_helper"

class FilmesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get filmes_show_url
    assert_response :success
  end

  test "should get create" do
    get filmes_create_url
    assert_response :success
  end

  test "should get edit" do
    get filmes_edit_url
    assert_response :success
  end

  test "should get update" do
    get filmes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get filmes_destroy_url
    assert_response :success
  end
end
