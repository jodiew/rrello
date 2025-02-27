require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:first)
  end

  test "Creating a new board" do
    visit boards_path
    assert_selector "h1", text: "Boards"

    click_on "Create new board"
    assert_selector "h1", text: "Create board"

    fill_in "Board title", with: "Capybara board"
    click_on "Create"

    assert_selector "h1", text: "Capybara board"
  end

  test "Showing a board" do
    visit boards_path
    click_link @board.title

    assert_selector "h1", text: @board.title
  end

  test "Updating a board" do
    visit boards_path
    assert_selector "h1", text: "Boards"

    click_link @board.title
    assert_selector "h1", text: @board.title

    click_on "Edit", match: :first
    assert_selector "h1", text: "Edit board"

    fill_in "Board title", with: "Updated board"
    click_on "Update"

    assert_selector "h1", text: "Updated board"
  end

  test "Destroying a board" do
    visit boards_path
    assert_text @board.title

    click_link @board.title
    assert_selector "h1", text: @board.title

    click_on "Delete", match: :first
    assert_selector "h1", text: "Boards"
    assert_no_text @board.title
  end
end
