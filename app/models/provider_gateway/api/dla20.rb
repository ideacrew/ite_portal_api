# frozen_string_literal: true

module ProviderGateway
  module Api
    # Dla20 profile object
    class Dla20 < ApplicationRecord
      self.table_name = 'dla20s'
      belongs_to :episodes, class_name: 'ProviderGateway::Api::Episode'
    end
  end
end
