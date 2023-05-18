# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MasterClient, type: :model, dbclean: :before_each do
  let(:master_client_params) do
    {
      master_client_id: 'M-00000001',
      full_name: 'Daniel L Crawford',
      first_name: 'Daniel',
      middle_name: 'L',
      last_name: 'Crawford',
      date_of_birth: Date.today - 30.years,
      gender: 'M',
      record_source: 'master_claims',
      record_source_id: '21337382200155227-01',
      record_source_date: Date.yesterday
    }
  end

  context 'with a valid master_client' do
    context 'all values filled in' do
      it 'will create an master_client object' do
        master_client = described_class.new(master_client_params)
        expect(master_client.save).to eq true
        expect(master_client.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an master_client object' do
      it 'without a master_client_id' do
        master_client_params[:master_client_id] = nil
        master_client = described_class.new(master_client_params)
        expect(master_client.save).to eq false
      end

      it 'without a date_of_birth' do
        master_client_params[:date_of_birth] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a full_name' do
        master_client_params[:full_name] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a gender' do
        master_client_params[:gender] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source_date' do
        master_client_params[:record_source_date] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source_id' do
        master_client_params[:record_source_id] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end

      it 'without a record_source' do
        master_client_params[:record_source] = nil
        master_client_registry = described_class.new(master_client_params)
        expect(master_client_registry.save).to eq false
      end
    end
  end
end
