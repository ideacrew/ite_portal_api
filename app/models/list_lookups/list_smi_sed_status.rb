# frozen_string_literal: true

module ListLookups
  # list_smi_sed_statuses object
  class ListSmiSedStatus < ApplicationRecord
    self.table_name = 'list_smi_sed_statuses'

    validates_presence_of(
      :smi_sed_code
    )
  end
end
