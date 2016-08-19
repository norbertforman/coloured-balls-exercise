module Api
  module V1
    class BallsController < BaseController
      def index
        return_response do
          BallColorService.new(params).calculate
        end
      end
    end
  end
end
