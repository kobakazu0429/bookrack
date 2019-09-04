require "rails_helper"

describe Api::V1::BooksController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response expected length as seed_fu data" do
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(4)
    end

    it "JSON body response contains expected recipe attributes" do
      json_response = JSON.parse(response.body)
      expect(json_response.first.keys).to match_array(["id", "title", "author", "isbn", "created_at", "updated_at"])
    end
  end
end
