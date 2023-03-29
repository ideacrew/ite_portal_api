# frozen_string_literal: true

module ListLookups
  # list_school_attendance_statuses object
  class ListSchoolAttendanceStatus < ApplicationRecord
    self.table_name = 'list_school_attendance_statuses'

    validates_presence_of(
      :school_attendance_code
    )
  end
end
