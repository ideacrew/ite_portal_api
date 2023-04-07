# frozen_string_literal: true

module Claims
  # controller actions for the master claims model
  class MasterClaimsController < ApplicationController
    before_action :permit_params

    def index
      if params['search']
        claims = Claims::MasterClaim.where('claim_tcn LIKE ? OR billing_medicaid_id LIKE ?', "%#{params['search']}%", "%#{params['search']}%").all
        render json: { claim_count: claims.length, claims: claims&.map(&:attributes) }
      else
        render json: { status_text: 'No search param given', status: 400, content_type: 'application/json' }, status: 400
      end
    end

    def advanced_search
      if params['criteria_selector']
        criteria = get_criteria(params)
        if criteria.any?
          claims = Claims::MasterClaim.where(criteria.join(' AND ')).order(created_at: :desc)
          claim_length = claims.size
          claims = claims.offset(params[:offset]).limit(20)
          render json: { claim_count: claim_length, claims: claims&.map(&:attributes) }
        end
      else
        render json: { status_text: 'No search criteria given', status: 400, content_type: 'application/json' }, status: 400
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

    def get_criteria(params)
      criteria = []
      params['criteria_selector'].each_key do |key|
        next unless params.dig('criteria_relative', key) && params.dig('criteria_value', key) && params.dig('criteria_value_type', key)

        selector = params['criteria_selector'][key]
        relative = params['criteria_relative'][key]
        value = params['criteria_value'][key]
        type = params['criteria_value_type'][key]

        if type == 'date_range'
          date_range_criterion = get_date_range_criteron(selector, relative, value)
          criteria.push(date_range_criterion)
        elsif ['LIKE', 'NOT LIKE'].include?(relative)
          criteria.push("UPPER(#{selector}) #{relative} UPPER('%#{value}%')")
        else
          criteria.push("#{selector} #{relative} '#{value}'")
        end
      end
      criteria
    end

    def get_date_range_criteron(selector, relative, value)
      selector1 = selector.split('|')[0]
      selector2 = selector.split('|')[1]
      if relative == '><'
        "#{selector1} <= '#{value}' AND #{selector2} >= '#{value}'"
      elsif relative == '>'
        "#{selector2} > '#{value}'"
      else
        "#{selector1} < '#{value}'"
      end
    end

    def permit_params
      params.permit(:search, :id, :offset, criteria_selector: {}, criteria_relative: {}, criteria_value: {}, criteria_value_type: {})
    end
  end
end
