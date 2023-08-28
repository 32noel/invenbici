require "test_helper"

class PartesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parte = partes(:one)
  end

  test "should get index" do
    get partes_url
    assert_response :success
  end

  test "should get new" do
    get new_parte_url
    assert_response :success
  end

  test "should create parte" do
    assert_difference("Parte.count") do
      post partes_url, params: { parte: { brand_id: @parte.brand_id, color_id: @parte.color_id, description: @parte.description, name: @parte.name } }
    end

    assert_redirected_to parte_url(Parte.last)
  end

  test "should show parte" do
    get parte_url(@parte)
    assert_response :success
  end

  test "should get edit" do
    get edit_parte_url(@parte)
    assert_response :success
  end

  test "should update parte" do
    patch parte_url(@parte), params: { parte: { brand_id: @parte.brand_id, color_id: @parte.color_id, description: @parte.description, name: @parte.name } }
    assert_redirected_to parte_url(@parte)
  end

  test "should destroy parte" do
    assert_difference("Parte.count", -1) do
      delete parte_url(@parte)
    end

    assert_redirected_to partes_url
  end
end
