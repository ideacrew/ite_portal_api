# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::ClaimMedicaidId, type: :model, dbclean: :around_each do
  let(:master_client) { FactoryBot.create(:master_client) }

  let(:claim_medicaid_id_params) do
    {
      medicaid_id_id: '1',
      master_client_id: master_client.id,
      medicaid_id: '123456',
      eligibility_program_code: '774D',
      record_source_date: Date.yesterday
    }
  end

  context 'with a valid claim_medicaid_id' do
    context 'all values filled in' do
      it 'will create an claim_medicaid_id object' do
        claim_medicaid_id = described_class.new(claim_medicaid_id_params)
        expect(claim_medicaid_id.save).to eq true
        expect(claim_medicaid_id.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an claim_medicaid_id object' do
      it 'without a medicaid_id_id' do
        claim_medicaid_id_params[:medicaid_id_id] = nil
        claim_medicaid_id = described_class.new(claim_medicaid_id_params)
        expect(claim_medicaid_id.save).to eq false
      end

      it 'without a medicaid_id' do
        claim_medicaid_id_params[:medicaid_id] = nil
        claim_medicaid_id_registry = described_class.new(claim_medicaid_id_params)
        expect(claim_medicaid_id_registry.save).to eq false
      end

      it 'without a eligibility_program_code' do
        claim_medicaid_id_params[:eligibility_program_code] = nil
        claim_medicaid_id_registry = described_class.new(claim_medicaid_id_params)
        expect(claim_medicaid_id_registry.save).to eq false
      end
      it 'without a record_source_date' do
        claim_medicaid_id_params[:record_source_date] = nil
        claim_medicaid_id_registry = described_class.new(claim_medicaid_id_params)
        expect(claim_medicaid_id_registry.save).to eq false
      end
    end
  end
end
