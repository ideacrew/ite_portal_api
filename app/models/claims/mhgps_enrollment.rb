# frozen_string_literal: true

module Claims
  # mhgps_enrollments object
  class MhgpsEnrollment < ApplicationRecord
    self.table_name = 'mhgps_enrollments'

    validates_presence_of(
      :medicaid_id,
      :mhgps_id,
      :full_name,
      :first_name,
      :last_name,
      :date_of_birth,
      :current_medicaid_id,
      :mhgps_start_date
    )
  end
end
