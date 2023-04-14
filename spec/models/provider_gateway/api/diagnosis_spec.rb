# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::Diagnosis, type: :model, dbclean: :around_each do
  let(:diagnosis_params) do
    {
      episode_key: 'test',
      client_key: 'test',
      diagnosis_code_version: '1',
      diagnosis_code: 'F43',
      diagnosis_category: 'sud',
      diagnosis_order: '1'
    }
  end

  context 'with a valid diagnosis' do
    context 'all values filled in' do
      it 'will create an diagnosis object' do
        ::ProviderGateway::Api::Episode.create(episode_key: 'test')
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq true
        expect(diagnosis.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an diagnosis object' do
      it 'without a client_key' do
        diagnosis_params[:client_key] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end

      it 'without a episode_key' do
        diagnosis_params[:episode_key] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end

      it 'without a diagnosis_code_version' do
        diagnosis_params[:diagnosis_code_version] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end

      it 'without a diagnosis_code' do
        diagnosis_params[:diagnosis_code] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end

      it 'without a diagnosis_category' do
        diagnosis_params[:diagnosis_category] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end

      it 'without a diagnosis_order' do
        diagnosis_params[:diagnosis_order] = nil
        diagnosis = described_class.new(diagnosis_params)
        expect(diagnosis.save).to eq false
      end
    end
  end
end
