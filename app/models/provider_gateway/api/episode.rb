# frozen_string_literal: true

module ProviderGateway
  module Api
    # Episode object
    class Episode < ApplicationRecord
      self.table_name = 'episodes'
      belongs_to :client, class_name: 'ProviderGateway::Api::Client'
    end
  end
end
