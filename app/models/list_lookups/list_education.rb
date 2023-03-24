# frozen_string_literal: true

module ListLookups
  # list_educations object
  class ListEducation < ApplicationRecord
    self.table_name = 'list_educations'

    validates_presence_of(
      :education_code
    )
  end
end
