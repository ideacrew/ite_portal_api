# frozen_string_literal: true

module ListLookups
  # list_legal_statuses object
  class ListLegalStatus < ApplicationRecord
    self.table_name = 'list_legal_statuses'

    validates_presence_of(
      :legal_status_code
    )
  end
end
