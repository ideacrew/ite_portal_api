# frozen_string_literal: true

module Claims
  # procedure_modifiers object
  class ProcedureModifier < ApplicationRecord
    self.table_name = 'procedure_modifiers'

    validates_presence_of(
      :modifier_code,
      :modifier_description
    )
  end
end
