# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::ClaimAddress, type: :model, dbclean: :around_each do
  let(:master_client) { FactoryBot.build(:master_client) }

  let(:claim_address_params) do
    {
      address_id: '1',
      master_client_id: master_client.id,
      full_address: '717 Villarreal Neck Port Holly, LA 18973',
      record_source_date: Date.yesterday
    }
  end

  context 'with a valid claim_address' do
    context 'all values filled in' do
      it 'will create an claim_address object' do
        claim_address = described_class.new(claim_address_params)
        expect(claim_address.save).to eq true
        expect(claim_address.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an claim_address object' do
      it 'without a address_id' do
        claim_address_params[:address_id] = nil
        claim_address = described_class.new(claim_address_params)
        expect(claim_address.save).to eq false
      end

      it 'without a full_address' do
        claim_address_params[:full_address] = nil
        claim_address_registry = described_class.new(claim_address_params)
        expect(claim_address_registry.save).to eq false
      end

      it 'without a record_source_date' do
        claim_address_params[:record_source_date] = nil
        claim_address_registry = described_class.new(claim_address_params)
        expect(claim_address_registry.save).to eq false
      end
    end
  end
end
