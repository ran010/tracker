require 'rails_helper'

RSpec.describe "Readings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/readings/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/readings/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/readings/new"
      expect(response).to have_http_status(:success)
    end
  end

end
