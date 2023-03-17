# frozen_string_literal: true

module Claims
  # claim_phone_numbers object
  class ClaimPhoneNumber < ApplicationRecord
    self.table_name = 'claim_phone_numbers'

    validates_presence_of(
      :phone_number_id,
      :master_client_id,
      :phone_number,
      :record_source_date
    )
  end
end
