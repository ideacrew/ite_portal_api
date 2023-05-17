# frozen_string_literal: true

module Claims
  # controller action for deployment
  class TestsController < ApplicationController
    def index
      render json: { status_text: 'Test check', status: 200, content_type: 'application/json' }, status: 200
    end
  end
end
