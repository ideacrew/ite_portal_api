# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::Client, type: :model, dbclean: :around_each do
  let(:client_params) do
    {
      client_id: '8347ehf',
      first_name: 'test',
      last_name: 'test',
      ssn: '223456789',
      dob: Date.today,
      gender: '1',
      race: '3',
      ethnicity: '4',
      primary_language: '1'
    }
  end

  context 'with a valid client' do
    context 'all values filled in' do
      it 'will create an client object' do
        client = described_class.new(client_params)
        expect(client.save).to eq true
        expect(client.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an client object' do
      it 'without a client_id' do
        client_params[:client_id] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a first_name' do
        client_params[:first_name] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a last_name' do
        client_params[:last_name] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a ssn' do
        client_params[:ssn] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a dob' do
        client_params[:dob] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a gender' do
        client_params[:gender] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a race' do
        client_params[:race] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a ethnicity' do
        client_params[:ethnicity] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end

      it 'without a primary_language' do
        client_params[:primary_language] = nil
        client = described_class.new(client_params)
        expect(client.save).to eq false
      end
    end
  end
end
