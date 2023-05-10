# frozen_string_literal: true

module Claims
  # controller actions for the master clients model
  class MasterClientsController < ApplicationController
    before_action :authorize
    before_action :permit_params

    def index
      if params['search']
        @clients = Claims::MasterClient.where('full_name LIKE ?', "%#{params['search']}%").all
        render json: { client_count: @clients.length, clients: @clients&.map(&:attributes) }
      else
        render json: { status_text: 'No search param given', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    def show
      binding.pry
      @client = Claims::MasterClient.find(params[:id])
      if @client
        render json: @client.attributes
      else
        render json: { status_text: 'Could not find client', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    def claim_history
      @client = Claims::MasterClient.find(params[:id])
      if @client
        render json: @client.claims.order(:created_at).reverse
      else
        render json: { status_text: 'Could not find client', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    private

    def permit_params
      params.permit(:search, :id)
    end
  end
end
