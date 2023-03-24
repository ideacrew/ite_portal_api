# frozen_string_literal: true

module ListLookups
  # list_record_types object
  class ListRecordType < ApplicationRecord
    self.table_name = 'list_record_types'

    validates_presence_of(
      :record_type_code
    )
  end
end
