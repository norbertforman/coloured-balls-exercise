module Api
  module V1
    class BallsController < BaseController
      def create
        return_response do
          BallColorService.new(params).calculate
        end
      end
    end
  end
end
