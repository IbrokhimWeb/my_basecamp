require "application_system_test_case"

class UplsTest < ApplicationSystemTestCase
  setup do
    @upl = upls(:one)
  end

  test "visiting the index" do
    visit upls_url
    assert_selector "h1", text: "Upls"
  end

  test "should create upl" do
    visit upls_url
    click_on "New upl"

    fill_in "Name", with: @upl.name
    fill_in "Project", with: @upl.project_id
    click_on "Create Upl"

    assert_text "Upl was successfully created"
    click_on "Back"
  end

  test "should update Upl" do
    visit upl_url(@upl)
    click_on "Edit this upl", match: :first

    fill_in "Name", with: @upl.name
    fill_in "Project", with: @upl.project_id
    click_on "Update Upl"

    assert_text "Upl was successfully updated"
    click_on "Back"
  end

  test "should destroy Upl" do
    visit upl_url(@upl)
    click_on "Destroy this upl", match: :first

    assert_text "Upl was successfully destroyed"
  end
end
