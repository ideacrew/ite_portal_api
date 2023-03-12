# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProviderGateway::Api::SubstanceUse, type: :model, dbclean: :around_each do
  let(:substance_use_params) do
    {
      client_key: 'test',
      episode_key: 'test',
      substance_code: '123'
    }
  end

  context 'with a valid substance_use' do
    context 'all values filled in' do
      it 'will create an substance_use object' do
        substance_use = described_class.new(substance_use_params)
        expect(substance_use.save).to eq true
        expect(substance_use.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an substance_use object' do
      it 'without a client_key' do
        substance_use_params[:client_key] = nil
        substance_use = described_class.new(substance_use_params)
        expect(substance_use.save).to eq false
      end

      it 'without a episode_key' do
        substance_use_params[:episode_key] = nil
        substance_use = described_class.new(substance_use_params)
        expect(substance_use.save).to eq false
      end

      it 'without a substance_code' do
        substance_use_params[:substance_code] = nil
        substance_use = described_class.new(substance_use_params)
        expect(substance_use.save).to eq false
      end
    end
  end
end
