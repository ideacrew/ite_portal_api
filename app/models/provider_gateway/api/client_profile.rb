# frozen_string_literal: true

module ProviderGateway
  module Api
    # client profile object
    class ClientProfile < ApplicationRecord
      self.table_name = 'client_profiles'
      belongs_to :client, class_name: 'ProviderGateway::Api::Client'

      validates_presence_of :marital_status, :education, :employment, :school_attendance, :legal_status, :client_key, :client_id
    end
  end
end
