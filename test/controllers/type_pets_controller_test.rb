require 'test_helper'

class TypePetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_pet = type_pets(:one)
  end

  test "should get index" do
    get type_pets_url, as: :json
    assert_response :success
  end

  test "should create type_pet" do
    assert_difference('TypePet.count') do
      post type_pets_url, params: { type_pet: { name: @type_pet.name } }, as: :json
    end

    assert_response 201
  end

  test "should show type_pet" do
    get type_pet_url(@type_pet), as: :json
    assert_response :success
  end

  test "should update type_pet" do
    patch type_pet_url(@type_pet), params: { type_pet: { name: @type_pet.name } }, as: :json
    assert_response 200
  end

  test "should destroy type_pet" do
    assert_difference('TypePet.count', -1) do
      delete type_pet_url(@type_pet), as: :json
    end

    assert_response 204
  end
end
