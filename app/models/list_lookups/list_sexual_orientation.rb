# frozen_string_literal: true

module ListLookups
  # list_sexual_orientations object
  class ListSexualOrientation < ApplicationRecord
    self.table_name = 'list_sexual_orientations'

    validates_presence_of(
      :sexual_orientation_code
    )
  end
end
