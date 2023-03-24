# frozen_string_literal: true

module ListLookups
  # list_discharge_reasons object
  class ListDischargeReason < ApplicationRecord
    self.table_name = 'list_discharge_reasons'

    validates_presence_of(
      :discharge_reason_code
    )
  end
end
