# frozen_string_literal: true

module ListLookups
  # list_primary_payment_sources object
  class ListPrimaryPaymentSource < ApplicationRecord
    self.table_name = 'list_primary_payment_sources'

    validates_presence_of(
      :primary_payment_source_code
    )
  end
end
