# frozen_string_literal: true

module ProviderGateway
  module Api
    # Dla20 profile object
    class Dla20 < ApplicationRecord
      self.table_name = 'dla20s'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode', foreign_key: :episode_key

      validates_presence_of :episode_key, :client_key, :dla_average_score
    end
  end
end
