# frozen_string_literal: true

module ListLookups
  # list_marital_statuses object
  class ListMaritalStatus < ApplicationRecord
    self.table_name = 'list_marital_statuses'

    validates_presence_of(
      :marital_status_code
    )
  end
end
