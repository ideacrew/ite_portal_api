# frozen_string_literal: true

module ListLookups
  # list_genders object
  class ListGender < ApplicationRecord
    self.table_name = 'list_genders'

    validates_presence_of(
      :gender_code
    )
  end
end
