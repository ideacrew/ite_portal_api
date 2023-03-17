# frozen_string_literal: true

module Claims
  # claim_medicaid_ids object
  class ClaimMedicaidId < ApplicationRecord
    self.table_name = 'claim_medicaid_ids'

    validates_presence_of(
      :medicaid_id_id,
      :master_client_id,
      :medicaid_id,
      :eligibility_program_code,
      :record_source_date
    )
  end
end
