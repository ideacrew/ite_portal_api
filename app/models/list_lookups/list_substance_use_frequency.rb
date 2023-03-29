# frozen_string_literal: true

module ListLookups
  # list_substance_use_frequencies object
  class ListSubstanceUseFrequency < ApplicationRecord
    self.table_name = 'list_substance_use_frequencies'

    validates_presence_of(
      :primary_su_frequency_admission_code
    )
  end
end
