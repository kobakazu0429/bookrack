require "rails_helper"

describe Api::V1::BooksController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "correct returns data length" do
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(4)
    end
  end
end
