module Api
  module V1
    class BallsController < BaseController
      def index
        return_response do
          { test: 'really' }
        end
      end
    end
  end
end
