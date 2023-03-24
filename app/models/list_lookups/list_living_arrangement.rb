# frozen_string_literal: true

module ListLookups
  # list_living_arrangements object
  class ListLivingArrangement < ApplicationRecord
    self.table_name = 'list_living_arrangements'

    validates_presence_of(
      :living_arrangements_code
    )
  end
end
