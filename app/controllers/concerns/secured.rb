# frozen_string_literal: true

# Secured authorization
module Secured
  extend ActiveSupport::Concern
  require 'net/http'
  require 'net/https'

  # rubocop:disable Metrics/PerceivedComplexity
  def authorize
    return if valid_local_user?

    auth_header = request.headers['Authorization']
    if auth_header
      token = auth_header.split(' ')[1]
      uri = "https://login.microsoftonline.com/#{ENV['TID']}/discovery/keys?appid=#{ENV['APP_ID']}"
      jwks_response = Net::HTTP.get_response URI(uri)
      jwks_hash = JSON.parse(jwks_response.body).deep_symbolize_keys

      decoded_token = JWT.decode(token, nil, true, {
                                   algorithm: 'RS256',
                                   iss: ENV['ISS'],
                                   verify_iss: true,
                                   aud: ENV['AUD'],
                                   verify_aud: true,
                                   jwks: { keys: jwks_hash[:keys] }
                                 })

      valid_kid = jwks_hash.values[0].pluck(:kid).include?(decoded_token.pluck('kid')&.compact&.first)

      @current_user = check_or_create_user(decoded_token.first['preferred_username'])
      render json: { status_text: 'Invalid credentials', status: 422, content_type: 'application/json' }, status: 422 unless valid_kid && @current_user
    else
      render json: { status_text: 'Unable to authorize the User', status: 401, content_type: 'application/json' }, status: 401
    end
  rescue StandardError => e
    render json: { status_text: e.to_s, status: 400, content_type: 'application/json' }, status: 400
  end
  # rubocop:enable Metrics/PerceivedComplexity

  private

  def valid_local_user?
    return false unless Rails.env.development? && params[:local_user_email].present?

    @current_user = check_or_create_user(params[:local_user_email])
    @current_user.present?
  end

  def check_or_create_user(username)
    existing_user = UserList.where(email: username)&.first
    return existing_user if existing_user

    nil
  end
end
