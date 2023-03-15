# frozen_string_literal: true

module Claims
  # master_claims object
  class MasterClaim < ApplicationRecord
    self.table_name = 'master_claims'

    validates_presence_of(
      :master_claim_id,
      :claim_record_id,
      :adjudication_date,
      :adjudication_status,
      :billing_date,
      :billing_provider_id,
      :billing_provider_type_code,
      :claim_coverage_type,
      :claim_information_source,
      :date_of_birth,
      :first_date_of_service,
      :full_name,
      :gender,
      :procedure_code
    )
  end
end
