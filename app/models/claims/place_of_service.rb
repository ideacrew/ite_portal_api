# frozen_string_literal: true

module Claims
  # place_of_services object
  class PlaceOfService < ApplicationRecord
    self.table_name = 'place_of_services'

    validates_presence_of(
      :place_of_service_code,
      :place_of_service_name,
      :place_of_service_description
    )
  end
end
