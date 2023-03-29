# frozen_string_literal: true

module ListLookups
  # list_income_sources object
  class ListIncomeSource < ApplicationRecord
    self.table_name = 'list_income_sources'

    validates_presence_of(
      :income_source_code
    )
  end
end
