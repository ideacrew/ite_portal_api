# frozen_string_literal: true

module ProviderGateway
  module Api
    # clinical profile object
    class ClinicalProfile < ApplicationRecord
      self.table_name = 'clinical_profiles'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'
    end
  end
end
