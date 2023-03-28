# frozen_string_literal: true

module ListLookups
  # list_referral_sources object
  class ListReferralSource < ApplicationRecord
    self.table_name = 'list_referral_sources'

    validates_presence_of(
      :referral_source_code
    )
  end
end
