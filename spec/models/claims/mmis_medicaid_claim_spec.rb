# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MmisMedicaidClaim, type: :model, dbclean: :around_each do
  let(:model_params) do
    {
      mmis_claim_id: '1',
      mmis_adjudication_date: '2022-01-31',
      mmis_adjudication_status: 'DENIED',
      mmis_billed_amount: '194.16',
      mmis_billing_date: '2022-01-24',
      mmis_billing_medicaid_id: '70####80',
      mmis_billing_patient_account: '67706',
      mmis_billing_provider: 'PSI SERVICES III INC',
      mmis_billing_provider_id: '36612200',
      mmis_billing_provider_npi: '1720271836',
      mmis_billing_provider_taxonomy: '100000000X',
      mmis_billing_provider_type: 'Mental Health Rehab Services',
      mmis_billing_provider_type_code: 'T01',
      mmis_claim_coverage_type: 'FFS',
      mmis_claim_process_level: 'Detail',
      mmis_claim_processing_status: 'ORIGINAL',
      mmis_claim_record_id: '21337382200155227-01',
      mmis_claim_tcn: '21337382200155227',
      mmis_claim_type: 'M',
      mmis_date_of_birth: '1973-06-19',
      mmis_eligibility_program_code: '774D',
      mmis_first_date_of_service: '2021-12-29',
      mmis_first_name: 'Daniel',
      mmis_full_address: '### E*** RD SE, Washington DC 20020',
      mmis_full_name: 'Daniel L Crawford',
      mmis_gender: 'F',
      mmis_last_date_of_service: '2021-12-29',
      mmis_last_name: 'Crawford',
      mmis_middle_name: 'L',
      mmis_modifier: 'GT',
      mmis_original_tcn_of_adjusted_claim: '',
      mmis_paid_amount: '194.16',
      mmis_paid_units: '8',
      mmis_place_of_service: 'Telehealth Provided Other than in Patient’s Home',
      mmis_place_of_service_code: '2',
      mmis_pre_authorization_number: '',
      mmis_primary_diagnosis_code: 'F33.8',
      mmis_procedure: 'COMM PSY FACE-FACE PER 15MIN',
      mmis_procedure_code: 'H0036',
      mmis_remittance_number: '1468706',
      mmis_submitted_units: '8',
      mmis_tcn_line_item_number: '1'
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
