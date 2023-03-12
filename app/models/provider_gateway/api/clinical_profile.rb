# frozen_string_literal: true

module ProviderGateway
  module Api
    # clinical profile object
    class ClinicalProfile < ApplicationRecord
      self.table_name = 'clinical_profiles'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'

      validates_presence_of :clinical_id, :episode_key, :provider_id, :client_id, :smi_sed
    end
  end
end
