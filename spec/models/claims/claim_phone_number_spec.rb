# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::ClaimPhoneNumber, type: :model, dbclean: :around_each do
  let(:master_client) { FactoryBot.create(:master_client) }

  let(:claim_phone_number_params) do
    {
      phone_number_id: '1',
      master_client_id: master_client.id,
      phone_number: '8839487303',
      record_source_date: Date.yesterday
    }
  end

  context 'with a valid claim_phone_number' do
    context 'all values filled in' do
      it 'will create an claim_phone_number object' do
        claim_phone_number = described_class.new(claim_phone_number_params)
        expect(claim_phone_number.save).to eq true
        expect(claim_phone_number.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an claim_phone_number object' do
      it 'without a phone_number_id' do
        claim_phone_number_params[:phone_number_id] = nil
        claim_phone_number = described_class.new(claim_phone_number_params)
        expect(claim_phone_number.save).to eq false
      end

      it 'without a phone_number' do
        claim_phone_number_params[:phone_number] = nil
        claim_phone_number_registry = described_class.new(claim_phone_number_params)
        expect(claim_phone_number_registry.save).to eq false
      end

      it 'without a record_source_date' do
        claim_phone_number_params[:record_source_date] = nil
        claim_phone_number_registry = described_class.new(claim_phone_number_params)
        expect(claim_phone_number_registry.save).to eq false
      end
    end
  end
end
