require "rails_helper"

describe "as a user" do
  it "can see search form for sweet potatoes" do
    visit "/"

    fill_in 'q', with: "sweet potatoes"
    click_on "Search"
    expext(current_path).to eq("/foods")
    expect(page).to have_content("50")
    expect(page).to have_content("SWEET POTATOES", count: 10)
    expect(page).to have_content("Terra Sweet Potato Chips")
  end
end
