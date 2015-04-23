require 'rails_helper'

RSpec.describe Reward, type: :model do
  let(:reward){Reward.new(name: "Rainbow Sticker", point_value: 10)}

  it "is valid" do
    expect(reward).to be_valid
  end

  it "is invalid without a name" do
    reward.name = nil
    expect(reward).to_not be_valid
  end

  it "is invalid without a point value" do
    reward.point_value = nil
    expect(reward).to_not be_valid
  end
end
