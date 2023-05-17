# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MasterClaimsController, dbclean: :around_each do
  let!(:claim) do
    Claims::MasterClaim.create(claim_record_id: '21337382200155227-01',
                               adjudication_date: '2022-01-31',
                               adjudication_status: 'PAID',
                               billing_date: '2022-01-24',
                               billing_provider_id: '78982097',
                               billing_provider_type_code: 'T01',
                               claim_coverage_type: 'FFS',
                               claim_information_source: 'MMIS RA - Medicaid FFS Claims',
                               date_of_birth: '1957-04-10',
                               first_date_of_service: '2021-12-29',
                               first_name: 'Daniel',
                               full_name: 'Daniel L Crawford',
                               gender: 'F',
                               procedure_code: 'H0036',
                               claim_tcn: '21337382200155227')
  end

  context 'GET Index' do
    it 'When user is authorized' do
      expect_any_instance_of(Claims::MasterClaimsController).to receive(:authorize).and_return(true)
      get :index, params: { search: '21337382200155227' }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['claim_count']).to eq 1
    end

    it 'When user is not authorized' do
      get :index, params: { search: '21337382200155227' }
      expect(response.status).to eq 400
      expect(JSON.parse(response.body)['status_text']).to eq 'Unable to authorize the User'
    end
  end
end
