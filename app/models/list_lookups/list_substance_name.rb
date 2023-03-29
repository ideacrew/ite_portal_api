# frozen_string_literal: true

module ListLookups
  # list_substance_names object
  class ListSubstanceName < ApplicationRecord
    self.table_name = 'list_substance_names'

    validates_presence_of(
      :substance_name_code
    )
  end
end
