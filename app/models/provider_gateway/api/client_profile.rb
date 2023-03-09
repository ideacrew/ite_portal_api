# frozen_string_literal: true

module ProviderGateway
  module Api
    # client profile object
    class ClientProfile < ApplicationRecord
      self.table_name = 'client_profiles'
      belongs_to :client, class_name: 'ProviderGateway::Api::Client'
    end
  end
end
