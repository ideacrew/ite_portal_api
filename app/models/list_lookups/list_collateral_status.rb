# frozen_string_literal: true

module ListLookups
  # list_collateral_statuses object
  class ListCollateralStatus < ApplicationRecord
    self.table_name = 'list_collateral_statuses'

    validates_presence_of(
      :collateral_status_code
    )
  end
end
