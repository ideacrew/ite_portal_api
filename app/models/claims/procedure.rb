# frozen_string_literal: true

module Claims
  # procedures object
  class Procedure < ApplicationRecord
    self.table_name = 'procedures'

    validates_presence_of(
      :procedure_code,
      :procedure_description
    )

    def filter_options_format
      {
        value: procedure_code,
        display: procedure_description
      }
    end
  end
end
