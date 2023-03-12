# frozen_string_literal: true

module ProviderGateway
  module Api
    # client object
    class Client < ApplicationRecord
      self.table_name = 'clients'
      has_many :episodes, class_name: 'ProviderGateway::Api::Episode'
      has_many :client_profiles, class_name: 'ProviderGateway::Api::ClientProfile'
      has_many :clinical_profiles, class_name: 'ProviderGateway::Api::ClinicalProfile'
      has_many :phones, as: :phonable
      has_many :addresses, as: :addressable

      validates_presence_of :client_id, :first_name, :last_name, :ssn, :dob, :gender, :race, :ethnicity, :primary_language
    end
  end
end
