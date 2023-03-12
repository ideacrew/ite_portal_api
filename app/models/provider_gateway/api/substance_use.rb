# frozen_string_literal: true

module ProviderGateway
  module Api
    # substance use profile object
    class SubstanceUse < ApplicationRecord
      self.table_name = 'substance_uses'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'

      validates_presence_of :episode_key, :client_key, :substance_code
    end
  end
end
