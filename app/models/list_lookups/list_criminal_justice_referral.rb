# frozen_string_literal: true

module ListLookups
  # list_criminal_justice_referrals object
  class ListCriminalJusticeReferral < ApplicationRecord
    self.table_name = 'list_criminal_justice_referrals'

    validates_presence_of(
      :criminal_justice_referral_code
    )
  end
end
