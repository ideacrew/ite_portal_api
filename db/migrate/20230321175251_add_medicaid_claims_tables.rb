class AddMedicaidClaimsTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'mmis_medicaid_claims' do |t|
      t.string 'mmis_claim_id', null: false
      t.string 'mmis_adjudication_date', null: false
      t.string 'mmis_adjudication_status', null: false
      t.decimal 'mmis_billed_amount'
      t.date 'mmis_billing_date', null: false
      t.string 'mmis_billing_medicaid_id'
      t.string 'mmis_billing_patient_account'
      t.string 'mmis_billing_provider'
      t.string 'mmis_billing_provider_id', null: false
      t.string 'mmis_billing_provider_npi'
      t.string 'mmis_billing_provider_taxonomy'
      t.string 'mmis_billing_provider_type'
      t.string 'mmis_billing_provider_type_code', null: false
      t.string 'mmis_claim_coverage_type', null: false
      t.string 'mmis_claim_process_level'
      t.string 'mmis_claim_processing_status'
      t.string 'mmis_claim_record_id', null: false
      t.string 'mmis_claim_tcn', limit: 17
      t.string 'mmis_claim_type'
      t.date 'mmis_date_of_birth', null: false
      t.string 'mmis_eligibility_program_code'
      t.date 'mmis_first_date_of_service', null: false
      t.string 'mmis_first_name'
      t.string 'mmis_full_address'
      t.string 'mmis_full_name', null: false
      t.string 'mmis_gender', null: false
      t.date 'mmis_last_date_of_service'
      t.string 'mmis_last_name'
      t.string 'mmis_middle_name'
      t.string 'mmis_modifier'
      t.string 'mmis_original_tcn_of_adjusted_claim', limit: 17
      t.decimal 'mmis_paid_amount'
      t.integer 'mmis_paid_units'
      t.string 'mmis_place_of_service'
      t.string 'mmis_place_of_service_code'
      t.string 'mmis_pre_authorization_number'
      t.string 'mmis_primary_diagnosis_code'
      t.string 'mmis_procedure'
      t.string 'mmis_procedure_code', null: false
      t.string 'mmis_remittance_number'
      t.integer 'mmis_submitted_units'
      t.string 'mmis_tcn_line_item_number'
      t.timestamps
      t.index ['mmis_claim_id'], name: 'index_mmis_claim_id'
    end

    create_table 'dw_medicaid_claims' do |t|
      t.string 'dw_claim_id', null: false
      t.string 'dw_adjudication_date', null: false
      t.string 'dw_adjudication_status', null: false
      t.string 'dw_admitting_diagnosis'
      t.string 'dw_admitting_diagnosis_code'
      t.decimal 'dw_billed_amount'
      t.date 'dw_billing_date', null: false
      t.string 'dw_billing_medicaid_id'
      t.string 'dw_billing_provider'
      t.string 'dw_billing_provider_id', null: false
      t.string 'dw_billing_provider_npi'
      t.string 'dw_billing_provider_type'
      t.string 'dw_billing_provider_type_code', null: false
      t.string 'dw_claim_coverage_type', null: false
      t.string 'dw_claim_process_level'
      t.string 'dw_claim_record_id', null: false
      t.string 'dw_claim_tcn', limit: 17
      t.date 'dw_date_of_birth', null: false
      t.string 'dw_drug_category'
      t.string 'dw_drug_code'
      t.string 'dw_drug_generic_name'
      t.string 'dw_drug_name'
      t.string 'dw_eligibility_program_code'
      t.string 'dw_emergency_diagnosis'
      t.string 'dw_emergency_diagnosis_code'
      t.date 'dw_first_date_of_service', null: false
      t.string 'dw_first_name'
      t.string 'dw_full_address'
      t.string 'dw_full_name', null: false
      t.string 'dw_gender', null: false
      t.string 'dw_header_diagnosis_group_key'
      t.date 'dw_last_date_of_service'
      t.string 'dw_last_name'
      t.decimal 'dw_mco_encounter_paid_amount'
      t.string 'dw_modifier'
      t.string 'dw_other_diagnosis_code'
      t.decimal 'dw_paid_amount'
      t.integer 'dw_paid_units'
      t.string 'dw_phone_number'
      t.string 'dw_place_of_service'
      t.string 'dw_place_of_service_code'
      t.string 'dw_pre_authorization_number'
      t.string 'dw_primary_diagnosis'
      t.string 'dw_primary_diagnosis_code'
      t.string 'dw_procedure'
      t.string 'dw_procedure_code', null: false
      t.string 'dw_race'
      t.string 'dw_remittance_number'
      t.string 'dw_revenue_code'
      t.string 'dw_revenue_code_description'
      t.integer 'dw_submitted_units'
      t.string 'dw_tcn_line_item_number'
      t.string 'dw_ward_code'
      t.timestamps
      t.index ['dw_claim_id'], name: 'index_dw_claim_id'
    end

    create_table 'denied_claims_with_reasons' do |t|
      t.string 'claim_tcn', limit: 17, null: false
      t.string 'denial_reason_code', null: false
      t.string 'denial_reason', null: false
      t.timestamps
      t.index ['claim_tcn'], name: 'index_claim_tcn'
    end

    create_table 'mhgps_enrollments' do |t|
      t.string 'mhgps_id', null: false
      t.string 'full_name', null: false
      t.string 'first_name', null: false
      t.string 'last_name', null: false
      t.date 'date_of_birth', null: false
      t.string 'current_medicaid_id', null: false
      t.date 'mhgps_start_date', null: false
      t.date 'mhgps_end_date'
      t.string 'phone_number'
      t.timestamps
      t.index ['mhgps_id'], name: 'index_mhgps_id'
    end




  end
end
