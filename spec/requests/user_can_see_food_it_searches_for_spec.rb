require "rails_helper"
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
describe "as a user" do
  it "can see search form for sweet potatoes"do
    visit "/"

    fill_in 'session[email]', with: "sweet potatoes"
    click_on "Search"

    expect(page).to have_content("50")
    expect(page).to have_content("SWEET POTATOES", count: 10)
  end
end
