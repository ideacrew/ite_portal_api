# frozen_string_literal: true

module ListLookups
  # list_ethnicities object
  class ListEthnicity < ApplicationRecord
    self.table_name = 'list_ethnicities'

    validates_presence_of(
      :ethnicity_code
    )
  end
end
