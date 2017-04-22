require 'grape'

module SimpleApi
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :people do
      desc 'list all people'
      params do
        optional :color, type: String
      end
      get do
        {
          id: 1,
          name: 'bacon',
          color: params[:color]
        }
      end
    end
  end
end
