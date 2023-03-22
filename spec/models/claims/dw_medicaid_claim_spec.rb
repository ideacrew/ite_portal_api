# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::DwMedicaidClaim, type: :model, dbclean: :around_each do
  let(:model_params) do
    {
      dw_claim_id: '3',
      dw_adjudication_date: '2022-01-31',
      dw_adjudication_status: 'PAID',
      dw_admitting_diagnosis: 'Unknown',
      dw_admitting_diagnosis_code: 'Unknown',
      dw_billed_amount: '3879.36',
      dw_billing_date: '2022-01-24',
      dw_billing_medicaid_id: '70####15',
      dw_billing_provider: 'GENERIC MCO PHARMACY',
      dw_billing_provider_id: '35024600',
      dw_billing_provider_npi: '',
      dw_billing_provider_type: 'Pharmacy, Retail',
      dw_billing_provider_type_code: 'H00',
      dw_claim_coverage_type: 'FFS',
      dw_claim_process_level: 'header',
      dw_claim_record_id: '21337382170082327-01',
      dw_claim_tcn: '21337382170082327',
      dw_date_of_birth: '1970-02-28',
      dw_drug_category: 'Unknown',
      dw_drug_code: '54017613',
      dw_drug_generic_name: 'BUPRENORPHINE HCL',
      dw_drug_name: 'BUPRENORP-NALOX 8-2 MG SL F',
      dw_eligibility_program_code: '150Y',
      dw_emergency_diagnosis: 'Unknown',
      dw_emergency_diagnosis_code: 'Unknown',
      dw_first_date_of_service: '2022-01-11',
      dw_first_name: 'Brian',
      dw_full_address: '### M*** PLACE SE, Washington DC 20020',
      dw_full_name: 'Brian Howard',
      dw_gender: 'F',
      dw_header_diagnosis_group_key: '',
      dw_last_date_of_service: '2022-01-11',
      dw_last_name: 'Howard',
      dw_mco_encounter_paid_amount: '',
      dw_modifier: 'Unknown',
      dw_other_diagnosis_code: '',
      dw_paid_amount: '1060.36',
      dw_paid_units: '1',
      dw_phone_number: '',
      dw_place_of_service: 'Unknown',
      dw_place_of_service_code: 'UNK',
      dw_pre_authorization_number: '20221102050',
      dw_primary_diagnosis: 'Unknown',
      dw_primary_diagnosis_code: 'Unknown',
      dw_procedure: 'Unknown',
      dw_procedure_code: 'Unknown',
      dw_race: '',
      dw_remittance_number: '',
      dw_revenue_code: '0500',
      dw_revenue_code_description: 'OUTPATIENT SERVICES - GENERAL CLASS',
      dw_submitted_units: '120',
      dw_tcn_line_item_number: '1',
      dw_ward_code: '7'
    }
  end

  context "with a valid #{described_class} object" do
    context 'all param values filled in' do
      it "will create a #{described_class} object" do
        model_obj = described_class.new(model_params)
        model_obj.save
        puts model_obj.errors.to_a
        expect(model_obj.save).to eq true
        expect(model_obj.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context "will not create a #{described_class} object" do
      required_params = described_class.validators.select { |a| a.is_a? ActiveRecord::Validations::PresenceValidator }.first.attributes
      required_params.each do |param|
        it "if missing the required field: #{param}" do
          model_params[param] = nil
          model_obj = described_class.new(model_params)
          expect(model_obj.save).to eq false
        end
      end
    end
  end
end
