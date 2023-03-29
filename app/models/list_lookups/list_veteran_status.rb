# frozen_string_literal: true

module ListLookups
  # list_veteran_statuses object
  class ListVeteranStatus < ApplicationRecord
    self.table_name = 'list_veteran_statuses'

    validates_presence_of(
      :veteran_status_code
    )
  end
end
