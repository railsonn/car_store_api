module Api
  module V1 
    class Api::V1::HomeController < ApplicationController
      def index
        render json: {
          name: "Lojista API",
          version: "v1",
          status: "online",
          time: Time.current
        }
      end
    end
  end
end
