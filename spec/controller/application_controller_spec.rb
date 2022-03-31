require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
    context "GET #index" do
        it "returns a successful response" do
            get :index
        expect(response).to be_success
        end
    end

    context "GET #show" do
    let!(:project) { ApplicationController.create(title: "Test title", description: "Test description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_success
    end
  end


end