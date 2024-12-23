class SearchController < ApplicationController
  def index
    @pg_search_documents = PgSearch.multisearch(params[:search_query])
  end
end
