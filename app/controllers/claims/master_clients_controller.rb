# frozen_string_literal: true

module Claims
  class MasterClientsController < ApplicationController
    before_action :permit_params

    def index
      puts params
      if params["search"]
        # no data, the where clause may need to be overhauled, just putting in as a placeholder!
        @clients = Claims::MasterClient.where("full_name LIKE ?", "%#{params["search"]}%").all
        render json: { client_count: @clients.length, clients: @clients&.map(&:attributes) }
      else
        render json: { status_text: 'No search param given', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    private

    def permit_params
      params.permit(:search)
    end
  end
end