# frozen_string_literal: true

module ProviderGateway
  module Api
    # phone object for a location
    class Phone < ApplicationRecord
      self.table_name = 'phones'
      belongs_to :clients, class_name: 'ProviderGateway::Api::Client'

      before_save :set_full_phone_number

      validates :area_code,
                numericality: true,
                length: { minimum: 3, maximum: 3, message: '%<value>s is not a valid area code' },
                allow_blank: false

      validates :number,
                numericality: true,
                length: { minimum: 7, maximum: 7, message: '%<value>s is not a valid phone number' },
                allow_blank: false

      def to_fs
        full_number = (area_code + number).to_i
        if extension.present?
          full_number.to_fs(:phone, area_code: true, extension:)
        else
          full_number.to_fs(:phone, area_code: true)
        end
      end

      def set_full_phone_number
        self.full_phone_number = to_fs
      end
    end
  end
end
