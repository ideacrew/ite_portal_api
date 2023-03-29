# frozen_string_literal: true

module ListLookups
  # list_co_occurring_statuses object
  class ListCoOccurringStatus < ApplicationRecord
    self.table_name = 'list_co_occurring_statuses'

    validates_presence_of(
      :co_occurring_sud_mh_code
    )
  end
end
