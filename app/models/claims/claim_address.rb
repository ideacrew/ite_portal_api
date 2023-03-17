# frozen_string_literal: true

module Claims
  # claim_addresses object
  class ClaimAddress < ApplicationRecord
    self.table_name = 'claim_addresses'

    validates_presence_of(
      :address_id,
      :master_client_id,
      :full_address,
      :record_source_date
    )
  end
end
