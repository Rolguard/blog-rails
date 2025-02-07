module Blogger
  class Base < Grape::API
    # Here, I would put all the api routes for v1, v2 etc.
    prefix "api"
    mount Blogger::V1::Base
    # TODO: Handle 404 errors and parameter validation errors
    rescue_from :all
  end
end
