class AddClaimsMasterTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'master_clients' do |t|
      t.string 'master_client_id', null: false
      t.date 'date_of_birth', null: false
      t.string 'first_name'
      t.string 'full_name', null: false
      t.string 'gender', null: false
      t.string 'last_name'
      t.string 'middle_name'
      t.string 'record_source', null: false, :default => 'master_claims'
      t.string 'record_source_id', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'master_client_registries' do |t|
      t.bigint 'master_client_registry_id', null: false
      t.string 'master_client_id', null: false
      t.bigint 'billing_medicaid_id'
      t.bigint 'billing_patient_account'
      t.bigint 'billing_provider_id'
      t.date 'date_of_birth', null: false
      t.string 'first_name'
      t.text 'full_address'
      t.string 'full_name', null: false
      t.string 'gender', null: false
      t.string 'last_name'
      t.string 'middle_name'
      t.string 'phone_number'
      t.string 'race'
      t.string 'record_source', null: false, :default => 'master_claims'
      t.string 'record_source_id', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['master_client_registry_id'], name: 'index_master_client_registry_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'master_claims' do |t|
      t.bigint 'master_claim_id', null: false
      t.string 'claim_record_id', null: false
      t.date 'adjudication_date', null: false
      t.string 'adjudication_status'
      t.string 'admitting_diagnosis'
      t.string 'admitting_diagnosis_code'
      t.integer 'age_as_of_first_date_of_service'
      t.decimal 'billed_amount'
      t.date 'billing_date', null: false
      t.bigint 'billing_medicaid_id'
      t.bigint 'billing_patient_account'
      t.string 'billing_provider'
      t.bigint 'billing_provider_id', null: false
      t.string 'billing_provider_npi'
      t.string 'billing_provider_taxonomy'
      t.string 'billing_provider_type'
      t.string 'billing_provider_type_code', null: false
      t.string 'claim_coverage_type', null: false
      t.string 'claim_information_source'
      t.string 'claim_process_level'
      t.string 'claim_processing_status'
      t.bigint 'claim_tcn'
      t.string 'claim_type'
      t.date 'date_of_birth', null: false
      t.string 'drug_category'
      t.string 'drug_code'
      t.string 'drug_generic_name'
      t.string 'drug_name'
      t.string 'eligibility_program_code'
      t.string 'emergency_diagnosis'
      t.string 'emergency_diagnosis_code'
      t.date 'first_date_of_service', null: false
      t.string 'first_name'
      t.text 'full_address', null: false
      t.string 'full_name'
      t.string 'gender', null: false
      t.bigint 'header_diagnosis_group_key'
      t.date 'last_date_of_service'
      t.string 'last_name'
      t.decimal 'mco_encounter_paid_amount'
      t.string 'middle_name'
      t.string 'modifiers'
      t.string 'original_tcn_of_adjusted_claim'
      t.string 'other_diagnosis'
      t.decimal 'paid_amount'
      t.integer 'paid_units'
      t.string 'phone_number'
      t.string 'place_of_service'
      t.integer 'place_of_service_code'
      t.bigint 'pre_authorization_number'
      t.string 'primary_diagnosis'
      t.string 'primary_diagnosis_code'
      t.string 'procedure'
      t.string 'procedure_code', null: false
      t.string 'race'
      t.bigint 'remittance_number'
      t.string 'revenue_code'
      t.string 'revenue_code_description'
      t.integer 'submitted_units'
      t.integer 'tcn_line_item_number'
      t.integer 'ward_code'
      t.timestamps
      t.index ['master_claim_id'], name: 'index_master_claim_id'
      t.index ['claim_record_id'], name: 'index_claim_record_id'
    end
  end
end
