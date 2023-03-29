# frozen_string_literal: true

module ListLookups
  # list_self_help_group_attendance_frequencies object
  class ListSelfHelpGroupAttendanceFrequency < ApplicationRecord
    self.table_name = 'list_self_help_group_attendance_frequencies'

    validates_presence_of(
      :self_help_group_admission_code
    )
  end
end
