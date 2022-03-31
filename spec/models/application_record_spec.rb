require 'rails_helper'

RSpec.describe ApplicationRecord, type: :model do
  context "validation tests" do
    it "ensures the title is present" do
      project = ApplicationRecord.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    it "ensures the description is present" do
      project = ApplicationRecord.new(title: "Title")
      expect(project.valid?).to eq(false)
    end

    it "should be able to save project" do
      project = ApplicationRecord.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

context "scopes test" do 
    let(:params) { {title: "Title", descrition: "some description"} }
    before(:each) do
      ApplicationRecord.create(params)
      ApplicationRecord.create(params)
      ApplicationRecord.create(params)
    end

    it "should return all projects" do
      expect(ApplicationRecord.count).to eq(3)
    end

  end
end

