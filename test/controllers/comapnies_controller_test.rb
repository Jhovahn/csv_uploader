require 'test_helper'

class ComapniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comapny = comapnies(:one)
  end

  test "should get index" do
    get comapnies_url, as: :json
    assert_response :success
  end

  test "should create comapny" do
    assert_difference('Comapny.count') do
      post comapnies_url, params: { comapny: { manager: @comapny.manager, name: @comapny.name, status: @comapny.status, terms: @comapny.terms } }, as: :json
    end

    assert_response 201
  end

  test "should show comapny" do
    get comapny_url(@comapny), as: :json
    assert_response :success
  end

  test "should update comapny" do
    patch comapny_url(@comapny), params: { comapny: { manager: @comapny.manager, name: @comapny.name, status: @comapny.status, terms: @comapny.terms } }, as: :json
    assert_response 200
  end

  test "should destroy comapny" do
    assert_difference('Comapny.count', -1) do
      delete comapny_url(@comapny), as: :json
    end

    assert_response 204
  end
end
