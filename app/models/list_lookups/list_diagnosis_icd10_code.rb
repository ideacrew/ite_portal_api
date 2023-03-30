# frozen_string_literal: true

module ListLookups
  # list_substance_use_routes object
  class ListDiagnosisIcd10Code < ApplicationRecord
    self.table_name = 'list_diagnosis_icd10_codes'

    validates_presence_of(
      :diagnosis_code
    )
  end
end
