# frozen_string_literal: true

module ProviderGateway
  module Api
    # Diagnosis profile object
    class Diagnosis < ApplicationRecord
      self.table_name = 'diagnoses'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'
    end
  end
end
