require 'rails_helper'

RSpec.describe "admin adds points" do

    it "is able to add points for all users" do
      # ApplicationController.any_instance.stub(:current_user).and_return(administrator)
      # allow_any_instance_of(User).to receive(:current_user).and_return(administrator)
      User.create(username: 'turing',
                  password: 'password',
                  password_confirmation: "password",
                  role: 1)

      user1 = User.create(username: 'tom',
                          password: 'password',
                          password_confirmation: "password",
                          role: 0,
                          available_points: 5)

      visit login_path

      fill_in "session[username]", with: "tom"
      fill_in "session[password]", with: "password"
      click_button "Login"
      visit '/admin'

      expect(page).to have_content("tom")
    end
end
