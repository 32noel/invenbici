require "application_system_test_case"

class PartesTest < ApplicationSystemTestCase
  setup do
    @parte = partes(:one)
  end

  test "visiting the index" do
    visit partes_url
    assert_selector "h1", text: "Partes"
  end

  test "should create parte" do
    visit partes_url
    click_on "New parte"

    fill_in "Brand", with: @parte.brand_id
    fill_in "Color", with: @parte.color_id
    fill_in "Description", with: @parte.description
    fill_in "Name", with: @parte.name
    click_on "Create Parte"

    assert_text "Parte was successfully created"
    click_on "Back"
  end

  test "should update Parte" do
    visit parte_url(@parte)
    click_on "Edit this parte", match: :first

    fill_in "Brand", with: @parte.brand_id
    fill_in "Color", with: @parte.color_id
    fill_in "Description", with: @parte.description
    fill_in "Name", with: @parte.name
    click_on "Update Parte"

    assert_text "Parte was successfully updated"
    click_on "Back"
  end

  test "should destroy Parte" do
    visit parte_url(@parte)
    click_on "Destroy this parte", match: :first

    assert_text "Parte was successfully destroyed"
  end
end
