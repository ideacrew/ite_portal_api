# frozen_string_literal: true

module ListLookups
  # list_employments object
  class ListEmployment < ApplicationRecord
    self.table_name = 'list_employments'

    validates_presence_of(
      :employment_code
    )
  end
end
