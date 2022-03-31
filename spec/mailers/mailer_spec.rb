require "rails_helper"

RSpec.describe Mailer, type: :mailer do
  context "validates tests" do
    it "checks if there is an email address" do
      mailer = Mailer.new(email: "email")
      expect(Mailer.valid?).to eq(false)
    end
      it "allows email to be saved"
      mailer = Mailer.new(email: "email")
      expect(Mailer.save).to eq(true)
  end
end
