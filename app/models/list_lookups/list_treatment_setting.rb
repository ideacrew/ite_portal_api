# frozen_string_literal: true

module ListLookups
  # list_treatment_settings object
  class ListTreatmentSetting < ApplicationRecord
    self.table_name = 'list_treatment_settings'

    validates_presence_of(
      :treatment_setting_code
    )
  end
end
