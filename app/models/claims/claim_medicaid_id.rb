# frozen_string_literal: true

module Claims
  # claim_medicaid_ids object
  class ClaimMedicaidId < ApplicationRecord
    self.table_name = 'claim_medicaid_ids'
    belongs_to :master_clients, class_name: 'Claims::MasterClient'

    validates_presence_of(
      :medicaid_id,
      :eligibility_program_code,
      :record_source_date
    )
  end
end
