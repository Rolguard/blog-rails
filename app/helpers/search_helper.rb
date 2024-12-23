module SearchHelper
  def filtered_pg_search_documents_count(pg_search_documents)
    # Returns the count of filtered search results from pg_search that meet these criteria:
    # Articles that are public and are approved by an admin
    # Users that are not an admin
    counter = 0
    pg_search_documents.each do |pg_search_document|
      result = pg_search_document.searchable
      if result.is_a?(Article) && public_and_accepted_article(result)
        counter += 1

      elsif result.is_a?(User) && !result.admin?
        counter += 1
      end
    end
    counter
  end
end
