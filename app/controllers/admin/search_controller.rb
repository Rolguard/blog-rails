class Admin::SearchController < Admin::BaseController
  def index
    @pg_search_documents = PgSearch.multisearch(params[:search_query])
  end
end
