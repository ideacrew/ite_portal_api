# frozen_string_literal: true

# top level controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize
    auth_header = request.headers['Authorization']
    token = auth_header.split(' ')[1]
    if auth_header
      jwks_response = Net::HTTP.get_response URI("https://login.microsoftonline.com/#{ENV['TID']}/discovery/keys?appid=#{ENV['APP_ID']}")
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

      render json: { status_text: 'Cannot validate the User', status: 400, content_type: 'application/json' }, status: 400 unless valid_kid
    end
  rescue StandardError => e
    render json: { status_text: 'Unable to authorize the User', status: 400, content_type: 'application/json' }, status: 400
  end
end
