# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::ClinicalProfile, type: :model, dbclean: :around_each do
  let(:clinical_profile_params) do
    {
      episode_key: 'test',
      provider_id: 'test',
      client_id: 'test',
      smi_sed: '4'
    }
  end

  context 'with a valid clinical_profile' do
    context 'all values filled in' do
      it 'will create an clinical_profile object' do
        clinical_profile = described_class.new(clinical_profile_params)
        expect(clinical_profile.save).to eq true
        expect(clinical_profile.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an clinical_profile object' do
      it 'without a episode_key' do
        clinical_profile_params[:episode_key] = nil
        clinical_profile = described_class.new(clinical_profile_params)
        expect(clinical_profile.save).to eq false
      end

      it 'without a provider_id' do
        clinical_profile_params[:provider_id] = nil
        clinical_profile = described_class.new(clinical_profile_params)
        expect(clinical_profile.save).to eq false
      end

      it 'without a client_id' do
        clinical_profile_params[:client_id] = nil
        clinical_profile = described_class.new(clinical_profile_params)
        expect(clinical_profile.save).to eq false
      end

      it 'without a smi_sed' do
        clinical_profile_params[:smi_sed] = nil
        clinical_profile = described_class.new(clinical_profile_params)
        expect(clinical_profile.save).to eq false
      end
    end
  end
end
