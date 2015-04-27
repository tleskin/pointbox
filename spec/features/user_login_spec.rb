require 'rails_helper'

RSpec.describe "user login" do
  context "with valid credentials" do
    it "shows user dashboard" do
      User.create(username: "turing",
                  password: "password",
                  password_confirmation: "password")

        visit login_path

        fill_in "session[username]", with: "turing"
        fill_in "session[password]", with: "password"

        click_link_or_button "Login"

        expect(page).to have_content("Welcome, turing!")
    end


    it 'cannot sign in without a valid password' do
    User.create(username: "turing",
                password: "password",
                password_confirmation: "password")
    visit login_path
    fill_in 'session[username]', with: "turing"
    fill_in 'session[password]', with: "invalid_password"
    click_link_or_button 'Login'
    expect(page).to have_content('Invalid login')
  end

  it 'can sign out once logged in' do
    User.create(username: "turing",
                password: "password",
                password_confirmation: "password")
    visit login_path
    fill_in 'session[username]', with: "turing"
    fill_in 'session[password]', with: "password"
    click_link_or_button 'Login'
    click_link_or_button 'Logout'
    expect(page).to have_content('Successfully logged out')
  end
  end
end
