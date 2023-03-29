# frozen_string_literal: true

module ListLookups
  # list_health_insurances object
  class ListHealthInsurance < ApplicationRecord
    self.table_name = 'list_health_insurances'

    validates_presence_of(
      :health_insurance_code
    )
  end
end
