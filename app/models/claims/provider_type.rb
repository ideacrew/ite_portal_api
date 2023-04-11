# frozen_string_literal: true

module Claims
  # provider_type object
  class ProviderType < ApplicationRecord
    self.table_name = 'provider_type'

    validates_presence_of(
      :provider_type_code,
      :provider_type_description
    )

    def filter_options_format
      {
        value: provider_type_code,
        display: provider_type_code
      }
    end
  end
end
