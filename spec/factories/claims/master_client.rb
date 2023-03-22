# frozen_string_literal: true

FactoryBot.define do
  factory :master_client, class: '::Claims::MasterClient' do
    sequence(:id) { |number| number }
    sequence(:master_client_id) { |number| "M-00000#{number}" }
    full_name { 'Daniel L Crawford' }
    first_name { 'Daniel' }
    middle_name { 'L' }
    last_name { 'Crawford' }
    date_of_birth { Date.today - 30.years }
    gender { 'M' }
    record_source { 'master_claims' }
    record_source_id { '21337382200155227-01' }
    record_source_date { Date.yesterday }
  end
end
