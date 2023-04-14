# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::Dla20, type: :model, dbclean: :around_each do
  let(:dla20_params) do
    {
      episode_key: 'episode_test',
      client_key: 'test',
      dla_average_score: '3.00'
    }
  end

  context 'with a valid dla20' do
    context 'all values filled in' do
      it 'will create an dla20 object' do
        ::ProviderGateway::Api::Episode.create(episode_key: 'episode_test')
        dla20 = described_class.new(dla20_params)
        expect(dla20.save).to eq true
        expect(dla20.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an dla20 object' do
      it 'without a client_key' do
        dla20_params[:client_key] = nil
        dla20 = described_class.new(dla20_params)
        expect(dla20.save).to eq false
      end

      it 'without a episode_key' do
        dla20_params[:episode_key] = nil
        dla20 = described_class.new(dla20_params)
        expect(dla20.save).to eq false
      end

      it 'without a dla_average_score' do
        dla20_params[:dla_average_score] = nil
        dla20 = described_class.new(dla20_params)
        expect(dla20.save).to eq false
      end
    end
  end
end
