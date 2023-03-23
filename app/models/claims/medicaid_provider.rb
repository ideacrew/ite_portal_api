# frozen_string_literal: true

module Claims
  # medicaid_providers object
  class MedicaidProvider < ApplicationRecord
    self.table_name = 'medicaid_providers'

    validates_presence_of(
      :dhcf_system_provider_id,
      :information_date
    )
  end
end
