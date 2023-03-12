# frozen_string_literal: true

module ProviderGateway
  module Api
    # Diagnosis profile object
    class Diagnosis < ApplicationRecord
      self.table_name = 'diagnoses'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'

      validates_presence_of :episode_key, :client_key, :diagnosis_code_version, :diagnosis_code, :diagnosis_category, :diagnosis_order
    end
  end
end
