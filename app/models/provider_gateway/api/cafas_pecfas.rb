# frozen_string_literal: true

module ProviderGateway
  module Api
    # CafasPecfas object
    class CafasPecfas < ApplicationRecord
      self.table_name = 'cafas_pecfases'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'
    end
  end
end
