require "rails_helper"

RSpec.describe "Articles API", type: :request do
  describe "GET /articles" do
    context "when there are 5 public and accepted articles" do
      before do
        FactoryBot.create_list(:article, 5, :published, :accepted)
        get "/api/v1/articles"
      end
      it "returns all articles" do
        expect(JSON.parse(response.body).size).to eq(5)
        expect(response).to have_http_status(:ok)
      end
    end
    context "when there is an article which does not have a public publish status" do
      let(:create_private_article) { FactoryBot.create(:article, :private, :accepted) }
      it "does not return a private article" do
        FactoryBot.create(:article, :private, :accepted)
        get "/api/v1/articles"
        expect(JSON.parse(response.body).size).to eql(0)
        expect(response).to have_http_status(:ok)
      end
    end
    context "where there is an article that has not been approved by an admin" do
      it "does not return a pending article" do
        FactoryBot.create(:article, :published, :pending)
        get "/api/v1/articles"
        expect(JSON.parse(response.body).size).to eql(0)
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
