# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MasterClaim, type: :model, dbclean: :around_each do
  let(:master_claim_params) do
    {
      master_claim_id: '1',
      claim_record_id: '21337382200155227-01',
      adjudication_date: '2022-01-31',
      adjudication_status: 'PAID',
      admitting_diagnosis_code: '',
      admitting_diagnosis: '',
      age_as_of_first_date_of_service: '64',
      billing_provider_taxonomy: '100000000X',
      billed_amount: '194.16',
      billing_date: '2022-01-24',
      billing_medicaid_id: '70443547',
      billing_patient_account: '67706',
      billing_provider_id: '78982097',
      billing_provider_npi: '1245693464',
      billing_provider_type_code: 'T01',
      billing_provider_type: 'Mental Health Rehab Services',
      billing_provider: 'AFFORDABLE HOME HEALTH CARE LLC',
      claim_coverage_type: 'FFS',
      claim_information_source: 'MMIS RA - Medicaid FFS Claims',
      claim_process_level: 'Detail',
      claim_processing_status: 'ORIGINAL',
      claim_tcn: '21337382200155227',
      claim_type: 'M',
      created_at: '2023-03-12 12:00 AM',
      date_of_birth: '1957-04-10',
      drug_category: '',
      drug_code: '',
      drug_generic_name: '',
      drug_name: '',
      eligibility_program_code: '774D',
      emergency_diagnosis_code: '',
      emergency_diagnosis: '',
      first_date_of_service: '2021-12-29',
      first_name: 'Daniel',
      full_address: '717 Villarreal Neck Port Holly, LA 18973',
      full_name: 'Daniel L Crawford',
      gender: 'F',
      header_diagnosis_group_key: '5099905',
      last_date_of_service: '2021-12-29',
      last_name: 'Crawford',
      mco_encounter_paid_amount: '0',
      middle_name: 'L',
      modifiers: 'GT',
      original_tcn_of_adjusted_claim: '',
      other_diagnosis: 'F33.8',
      paid_amount: '194.16',
      paid_units: '8',
      phone_number: '2021797858',
      place_of_service_code: '2',
      place_of_service: 'Telehealth Provided Other than in Patient’s Home',
      pre_authorization_number: '',
      primary_diagnosis_code: 'F33.8',
      primary_diagnosis: 'OTHER RECURRENT DEPRESSIVE DISORDERS',
      procedure_code: 'H0036',
      procedure: 'COMM PSY FACE-FACE PER 15MIN',
      race: 'African American',
      remittance_number: '1468706',
      revenue_code_description: '',
      revenue_code: '',
      submitted_units: '8',
      tcn_line_item_number: '1',
      updated_at: '2023-03-13 12:00 AM',
      ward_code: '8'
    }
  end

  context 'with a valid master_claim' do
    context 'all values filled in' do
      it 'will create an master_claim object' do
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq true
        expect(master_claim.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context 'will not create an master_claim object' do
      it 'without a master_claim_id' do
        master_claim_params[:master_claim_id] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a claim_record_id' do
        master_claim_params[:claim_record_id] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a adjudication_date' do
        master_claim_params[:adjudication_date] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a adjudication_status' do
        master_claim_params[:adjudication_status] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a billing_date' do
        master_claim_params[:billing_date] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a billing_provider_id' do
        master_claim_params[:billing_provider_id] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a billing_provider_type_code' do
        master_claim_params[:billing_provider_type_code] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a claim_coverage_type' do
        master_claim_params[:claim_coverage_type] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a claim_information_source' do
        master_claim_params[:claim_information_source] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a date_of_birth' do
        master_claim_params[:date_of_birth] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a first_date_of_service' do
        master_claim_params[:first_date_of_service] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a full_name' do
        master_claim_params[:full_name] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a gender' do
        master_claim_params[:gender] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end

      it 'without a procedure_code' do
        master_claim_params[:procedure_code] = nil
        master_claim = described_class.new(master_claim_params)
        expect(master_claim.save).to eq false
      end
    end
  end
end
