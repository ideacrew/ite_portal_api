# frozen_string_literal: true

module ListLookups
  # list_pregnant_statuses object
  class ListPregnantStatus < ApplicationRecord
    self.table_name = 'list_pregnant_statuses'

    validates_presence_of(
      :pregnant_code
    )
  end
end
