require 'grape'

module SimpleApi
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    rescue_from ActiveRecord::RecordNotFound do |e|
      error! 'Not Found', 404
    end

    resource :people do
      desc 'list all people'
      params do
        optional :color, type: String
      end
      get do
        Person.all
      end

      desc 'create a new person'
      params do
        requires :name, type: String, desc: 'Person name'
        requires :phone, type: String, desc: 'Person phone with area code'
      end
      post do
        Person.create(params)
      end

      desc 'Return a person.'
      params do
       requires :id, type: Integer, desc: 'Person id.'
      end
      route_param :id do
       get do
         Person.find(params[:id])
       end
      end

      desc 'Delete a person.'
      params do
       requires :id, type: Integer, desc: 'Person id.'
      end
      route_param :id do
       delete do
         Person.find(params[:id]).destroy
         body false
         status :no_content
       end
      end

    end
  end
end
