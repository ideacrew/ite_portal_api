# frozen_string_literal: true

module Claims
  # master_client object
  class MasterClient < ApplicationRecord
    self.table_name = 'master_clients'
    has_many :claim_addresses, class_name: 'Claims::ClaimAddress'
    has_many :claim_medicaid_ids, class_name: 'Claims::ClaimMedicaidId'
    has_many :claim_phone_numbers, class_name: 'Claims::ClaimPhoneNumber'

    validates_presence_of(
      :master_client_id,
      :date_of_birth,
      :full_name,
      :gender,
      :record_source,
      :record_source_date,
      :record_source_id
    )
  end
end
