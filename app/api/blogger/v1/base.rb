module Blogger
  module V1
    class Base < Grape::API
      # v1 is versioning strategy meaning to call any APIs in the Blogger::V1 module
      # you need to include it in the URL path e.g. /api/v1/articles
      version "v1", using: :path
      format :json
      mount Blogger::V1::Articles
    end
  end
end
