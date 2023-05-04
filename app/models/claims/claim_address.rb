# frozen_string_literal: true

module Claims
  # claim_addresses object
  class ClaimAddress < ApplicationRecord
    self.table_name = 'claim_addresses'
    belongs_to :master_clients, class_name: 'Claims::MasterClient'

    validates_presence_of(
      :full_address,
      :record_source_date
    )
  end
end
