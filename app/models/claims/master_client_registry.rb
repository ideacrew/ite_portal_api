# frozen_string_literal: true

module Claims
  # master_client_registries object
  class MasterClientRegistry < ApplicationRecord
    self.table_name = 'master_client_registries'

    validates_presence_of(
      :master_client_id,
      :date_of_birth,
      :full_name,
      :gender,
      :record_source_date,
      :record_source_id,
      :record_source
    )
  end
end
