# frozen_string_literal: true

module ListLookups
  # list_races object
  class ListRace < ApplicationRecord
    self.table_name = 'list_races'

    validates_presence_of(
      :race_code
    )
  end
end
