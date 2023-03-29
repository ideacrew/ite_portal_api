# frozen_string_literal: true

module ListLookups
  # list_not_in_labor_details object
  class ListNotInLaborDetail < ApplicationRecord
    self.table_name = 'list_not_in_labor_details'

    validates_presence_of(
      :not_in_labor_code
    )
  end
end
