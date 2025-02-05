module Blogger
  class Base < Grape::API
    # Here, I would put all the api routes for v1, v2 etc.
    prefix "api"
    mount Blogger::V1::Base
  end
end
