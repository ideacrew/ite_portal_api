# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::CafasPecfas, type: :model, dbclean: :after_each do
  let(:cafas_pecfas_params) do
    {
      episode_key: 'episode_key',
      client_key: 'client_key',
      cafas_or_pecfas_total_score: '3.00'
    }
  end

  context 'with a valid cafas_pecfas' do
    context 'all values filled in' do
      it 'will create an cafas_pecfas object' do
        ::ProviderGateway::Api::Episode.create(episode_key: 'episode_key')
        cafas_pecfas = described_class.new(cafas_pecfas_params)
        expect(cafas_pecfas.save).to eq true
        expect(cafas_pecfas.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an cafas_pecfas object' do
      it 'without a episode_key' do
        cafas_pecfas_params[:episode_key] = nil
        cafas_pecfas = described_class.new(cafas_pecfas_params)
        expect(cafas_pecfas.save).to eq false
      end

      it 'without a client_key' do
        cafas_pecfas_params[:client_key] = nil
        cafas_pecfas = described_class.new(cafas_pecfas_params)
        expect(cafas_pecfas.save).to eq false
      end

      it 'without a episode_key' do
        cafas_pecfas_params[:cafas_or_pecfas_total_score] = nil
        cafas_pecfas = described_class.new(cafas_pecfas_params)
        expect(cafas_pecfas.save).to eq false
      end
    end
  end
end
