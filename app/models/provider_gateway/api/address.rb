# frozen_string_literal: true

module ProviderGateway
  module Api
    # address object
    class Address < ApplicationRecord
      self.table_name = 'addresses'
      belongs_to :clients, class_name: 'ProviderGateway::Api::Client'

      validates_presence_of :state, :address_line1, :city

      validates :zip,
                allow_blank: false,
                format: {
                  with: /\A\d{5}(-\d{4})?\z/,
                  message: 'should be in the form: 12345 or 12345-1234'
                }
    end
  end
end
