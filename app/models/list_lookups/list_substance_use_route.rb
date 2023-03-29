# frozen_string_literal: true

module ListLookups
  # list_substance_use_routes object
  class ListSubstanceUseRoute < ApplicationRecord
    self.table_name = 'list_substance_use_routes'

    validates_presence_of(
      :primary_su_route_code
    )
  end
end
