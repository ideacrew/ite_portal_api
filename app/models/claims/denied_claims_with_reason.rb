# frozen_string_literal: true

module Claims
  # denied_claims_with_reasons object
  class DeniedClaimsWithReason < ApplicationRecord
    self.table_name = 'denied_claims_with_reasons'

    validates_presence_of(
      :claim_tcn,
      :denial_reason_code,
      :denial_reason
    )
  end
end
