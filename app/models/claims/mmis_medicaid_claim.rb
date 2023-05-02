# frozen_string_literal: true

module Claims
  # mmis_medicaid_claims object
  class MmisMedicaidClaim < ApplicationRecord
    self.table_name = 'mmis_medicaid_claims'

    validates_presence_of(
      :mmis_adjudication_date,
      :mmis_adjudication_status,
      :mmis_billing_date,
      :mmis_billing_provider_id,
      :mmis_billing_provider_type_code,
      :mmis_claim_coverage_type,
      :mmis_claim_record_id,
      :mmis_date_of_birth,
      :mmis_first_date_of_service,
      :mmis_full_name,
      :mmis_gender,
      :mmis_procedure_code
    )
  end
end
