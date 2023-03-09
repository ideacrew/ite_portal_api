# frozen_string_literal: true

module ProviderGateway
  module Api
    # CafasPecfas object
    class CafasPecfas < ApplicationRecord
      self.table_name = 'cafas_pecfases'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'

      validates_presence_of :episode_key, :client_key, :cafas_or_pecfas_total_score
    end
  end
end
