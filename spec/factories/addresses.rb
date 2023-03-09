# frozen_string_literal: true

FactoryBot.define do
  factory :address, class: '::ProviderGateway::Api::Address' do
    address_line1 { 'Address line 1' }
    city { 'Washington' }
    state { 'dc' }
    zip { '12345' }
    effective_start_date { Date.today }
  end
end
