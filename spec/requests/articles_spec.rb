require "rails_helper"

RSpec.describe "Articles API", type: :request do
  describe "GET /articles" do
    before do
      get "/api/v1/articles"
    end
    context "where there are 5 public and accepted articles" do
      let!(:public_and_accepted_articles) { FactoryBot.create_list(:article, 5, :published, :accepted) }
      it "returns all articles" do
        expect(JSON.parse(response.body).size).to eq(5)
        expect(response).to have_http_status(:ok)
      end
    end

    it "does not return articles that do not have a public publish status" do
      # let!(:public_and_pending_article) { FactoryBot.create(:article, :published, :pending) }
    end

    it "does not return articles that have not been approved by an admin" do
      # let!(:private_and_accepted_article) { FactoryBot.create(:article, :private, :accepted) }
    end
  end

  describe "GET "
end
