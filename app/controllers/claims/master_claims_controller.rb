# frozen_string_literal: true

module Claims
  # controller actions for the master claims model
  class MasterClaimsController < ApplicationController
    before_action :permit_params

    def index
      if params['search']
        @claims = Claims::MasterClaim.where('claim_tcn LIKE ? OR billing_medicaid_id LIKE ?', "%#{params['search']}%", "%#{params['search']}%").all
        render json: { claim_count: @claims.length, claims: @claims&.map(&:attributes) }
      else
        render json: { status_text: 'No search param given', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    def show
      @claim = Claims::MasterClaim.find(params[:id])
      if @claim
        render json: @claim.details
      else
        render json: { status_text: 'Could not find claim', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    private

    def permit_params
      params.permit(:search, :id)
    end
  end
end
