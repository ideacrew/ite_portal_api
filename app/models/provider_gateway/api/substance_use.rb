# frozen_string_literal: true

module ProviderGateway
  module Api
    # substance use profile object
    class SubstanceUse < ApplicationRecord
      self.table_name = 'substance_uses'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'
    end
  end
end
