require 'rails_helper'

RSpec.describe "user account creation" do

  context "with valid attributes" do

    it "creates an account" do
      visit new_user_path
      save_and_open_page
      fill_in "Username", with: "krusty"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_link_or_button "Create Account"
      expect(page).to have_content("Welcome, krusty!")
      expect(page).to have_content("Available Points: 0")
      expect(page).to have_content("Redeemed Points: 0")
    end
  end
end
