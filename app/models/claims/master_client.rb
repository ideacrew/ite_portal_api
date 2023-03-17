# frozen_string_literal: true

module Claims
  # master_client object
  class MasterClient < ApplicationRecord
    self.table_name = 'master_clients'

    validates_presence_of(
      :master_client_id,
      :date_of_birth,
      :full_name,
      :gender,
      :record_source,
      :record_source_date,
      :record_source_id
    )
  end
end
