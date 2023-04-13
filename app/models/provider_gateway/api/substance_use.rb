# frozen_string_literal: true

module ProviderGateway
  module Api
    # substance use profile object
    class SubstanceUse < ApplicationRecord
      self.table_name = 'substance_uses'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode', foreign_key: :episode_key

      validates_presence_of :episode_key, :client_key, :substance_code
    end
  end
end
