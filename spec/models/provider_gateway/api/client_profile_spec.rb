# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::ClientProfile, type: :model, dbclean: :around_each do
  let(:client_profile_params) do
    {
      marital_status: '1',
      education: '4',
      employment: '12',
      school_attendance: '1',
      legal_status: '1',
      client_key: 'test',
      client_id: 'test'
    }
  end

  context 'with a valid client_profile' do
    context 'all values filled in' do
      it 'will create an client_profile object' do
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq true
        expect(client_profile.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an client_profile object' do
      it 'without a marital_status' do
        client_profile_params[:marital_status] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a education' do
        client_profile_params[:education] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a employment' do
        client_profile_params[:employment] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a school_attendance' do
        client_profile_params[:school_attendance] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a legal_status' do
        client_profile_params[:legal_status] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a client_key' do
        client_profile_params[:client_key] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end

      it 'without a client_id' do
        client_profile_params[:client_id] = nil
        client_profile = described_class.new(client_profile_params)
        expect(client_profile.save).to eq false
      end
    end
  end
end
