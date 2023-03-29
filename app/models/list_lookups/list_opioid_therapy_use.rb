# frozen_string_literal: true

module ListLookups
  # list_substance_use_routes object
  class ListOpioidTherapyUse < ApplicationRecord
    self.table_name = 'list_opioid_therapy_uses'

    validates_presence_of(
      :opioid_therapy_code
    )
  end
end
