# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MasterClientsController, dbclean: :around_each do
  let!(:client) do
    Claims::MasterClient.create(master_client_id: 'M-00000002',
                                full_name: 'Dani L Car',
                                first_name: 'Dani',
                                middle_name: 'L',
                                last_name: 'Car',
                                date_of_birth: Date.today - 30.years,
                                gender: 'M',
                                record_source: 'master_claims',
                                record_source_id: '21337382200155227-02',
                                record_source_date: Date.yesterday)
  end

  context 'GET Index' do
    it 'When user is authorized' do
      expect_any_instance_of(Claims::MasterClientsController).to receive(:authorize).and_return(true)
      get :index, params: { search: 'Dani L Car' }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['client_count']).to eq 1
    end

    it 'When user is not authorized' do
      get :index, params: { search: 'Dani L Car' }
      expect(response.status).to eq 400
      expect(JSON.parse(response.body)['status_text']).to eq 'Unable to authorize the User'
    end
  end

  context 'GET show' do
    it 'When user is provider' do
      expect_any_instance_of(Claims::MasterClientsController).to receive(:authorize).and_return(true)
      get :show, params: { id: client.id }
      expect(response).to have_http_status(:success)
    end

    it 'When user is not authorized' do
      get :show, params: { id: client.id }
      expect(JSON.parse(response.body)['status_text']).to eq 'Unable to authorize the User'
    end
  end

  context 'GET claim_history' do
    it 'When user is provider' do
      expect_any_instance_of(Claims::MasterClientsController).to receive(:authorize).and_return(true)
      get :claim_history, params: { id: client.id }
      expect(response).to have_http_status(:success)
    end

    it 'When user is not authorized' do
      get :claim_history, params: { id: client.id }
      expect(JSON.parse(response.body)['status_text']).to eq 'Unable to authorize the User'
    end
  end
end
