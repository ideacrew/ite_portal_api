# frozen_string_literal: true

module Claims
  # denial_reasons object
  class DenialReason < ApplicationRecord
    self.table_name = 'denial_reasons'

    validates_presence_of(
      :denial_reason_code,
      :denial_reason_description
    )
  end
end
