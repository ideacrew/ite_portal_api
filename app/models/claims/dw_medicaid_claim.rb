# frozen_string_literal: true

module Claims
  # dw_medicaid_claims object
  class DwMedicaidClaim < ApplicationRecord
    self.table_name = 'dw_medicaid_claims'

    validates_presence_of(
      :dw_adjudication_date,
      :dw_adjudication_status,
      :dw_billing_date,
      :dw_billing_provider_id,
      :dw_billing_provider_type_code,
      :dw_claim_coverage_type,
      :dw_claim_record_id,
      :dw_date_of_birth,
      :dw_first_date_of_service,
      :dw_full_name,
      :dw_gender,
      :dw_procedure_code
    )
  end
end
