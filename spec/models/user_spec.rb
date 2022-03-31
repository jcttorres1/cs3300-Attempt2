require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do
    it "checks if user is present" do
      user = User.new(description: "email of user")
      expect(user.valid?).to eq(false)
    end
  end
end
