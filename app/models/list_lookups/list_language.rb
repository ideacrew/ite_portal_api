# frozen_string_literal: true

module ListLookups
  # list_languages object
  class ListLanguage < ApplicationRecord
    self.table_name = 'list_languages'

    validates_presence_of(
      :primary_language_code
    )
  end
end
