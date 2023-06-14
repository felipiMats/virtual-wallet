require "application_system_test_case"

class ExtractsTest < ApplicationSystemTestCase
  setup do
    @extract = extracts(:one)
  end

  test "visiting the index" do
    visit extracts_url
    assert_selector "h1", text: "Extracts"
  end

  test "should create extract" do
    visit extracts_url
    click_on "New extract"

    fill_in "Transaction_type", with: @extract.transaction_type
    fill_in "User", with: @extract.user_id
    fill_in "Value", with: @extract.value
    click_on "Create Extract"

    assert_text "Extract was successfully created"
    click_on "Back"
  end

  test "should update Extract" do
    visit extract_url(@extract)
    click_on "Edit this extract", match: :first

    fill_in "Transaction_type", with: @extract.transaction_type
    fill_in "User", with: @extract.user_id
    fill_in "Value", with: @extract.value
    click_on "Update Extract"

    assert_text "Extract was successfully updated"
    click_on "Back"
  end

  test "should destroy Extract" do
    visit extract_url(@extract)
    click_on "Destroy this extract", match: :first

    assert_text "Extract was successfully destroyed"
  end
end
