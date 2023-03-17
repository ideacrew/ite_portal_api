# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MasterClientRegistry, type: :model, dbclean: :around_each do
  let(:master_client_registry_params) do
    {
      master_client_registry_id: '1',
      master_client_id: 'M-00000001',
      billing_medicaid_id: '70443547',
      billing_patient_account: '67706',
      billing_provider_id: '78982097',
      date_of_birth: Date.today - 30.years,
      first_name: 'Daniel',
      full_address: '717 Villarreal Neck Port Holly, LA 18973',
      full_name: 'Daniel L Crawford',
      gender: 'M',
      last_name: 'Crawford',
      middle_name: 'L',
      phone_number: '2021797858',
      race: 'African American',
      record_source_date: Date.yesterday,
      record_source_id: '21337382200155227-01',
      record_source: 'master_claims'
    }
  end

  context 'with a valid master_client_registry' do
    context 'all values filled in' do
      it 'will create an master_client_registry object' do
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq true
        expect(master_client_registry.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an master_client_registry object' do
      it 'without a master_client_registry_id' do
        master_client_registry_params[:master_client_registry_id] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a master_client_id' do
        master_client_registry_params[:master_client_id] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a date_of_birth' do
        master_client_registry_params[:date_of_birth] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a full_name' do
        master_client_registry_params[:full_name] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a gender' do
        master_client_registry_params[:gender] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source_date' do
        master_client_registry_params[:record_source_date] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source_id' do
        master_client_registry_params[:record_source_id] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source' do
        master_client_registry_params[:record_source] = nil
        master_client_registry = described_class.new(master_client_registry_params)
        expect(master_client_registry.save).to eq false
      end
    end
  end
end
