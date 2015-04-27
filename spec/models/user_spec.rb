require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user){User.new( username: 'patrick', password: "password", password_confirmation: "password")}

  it 'is valid' do
    expect(user).to be_valid
  end

  it 'is invalid without a username' do
    user.username = nil
    expect(user).to_not be_valid
  end

  it 'has a default point values of zero' do
    expect(user.available_points).to be(0)
    expect(user.redeem_points).to be(0)
  end

end
