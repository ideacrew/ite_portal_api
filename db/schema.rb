# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_503_171_812) do
  create_table 'addresses', force: :cascade do |t|
    t.string 'address_line1'
    t.string 'address_line2'
    t.string 'dc_ward'
    t.string 'city'
    t.string 'state'
    t.string 'zip'
    t.date 'effective_start_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'clients_id'
    t.string 'provider_gateway_id'
    t.string 'client_key'
    t.index ['clients_id'], name: 'index_addresses_on_clients_id'
  end

  create_table 'cafas_pecfases', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'client_key'
    t.string 'assessment_type'
    t.date 'cafas_or_pecfas_assessment_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.float 'cafas_or_pecfas_total_score'
    t.string 'provider_gateway_id'
  end

  create_table 'claim_addresses', force: :cascade do |t|
    t.string 'address_id', null: false
    t.string 'full_address', null: false
    t.date 'record_source_date', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'master_client_id', null: false
    t.index ['address_id'], name: 'index_address_id'
    t.index ['master_client_id'], name: 'index_claim_addresses_on_master_client_id'
  end

  create_table 'claim_medicaid_ids', force: :cascade do |t|
    t.string 'medicaid_id_id', null: false
    t.string 'medicaid_id', null: false
    t.string 'eligibility_program_code', null: false
    t.date 'record_source_date', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'master_client_id', null: false
    t.index ['master_client_id'], name: 'index_claim_medicaid_ids_on_master_client_id'
    t.index ['medicaid_id_id'], name: 'index_medicaid_id_id'
  end

  create_table 'claim_phone_numbers', force: :cascade do |t|
    t.string 'phone_number_id', null: false
    t.string 'phone_number', null: false
    t.date 'record_source_date', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'master_client_id', null: false
    t.index ['master_client_id'], name: 'index_claim_phone_numbers_on_master_client_id'
    t.index ['phone_number_id'], name: 'index_phone_number_id'
  end

  create_table 'client_profiles', force: :cascade do |t|
    t.string 'client_key'
    t.string 'living_arrangement'
    t.string 'marital_status'
    t.string 'veteran_status'
    t.string 'education'
    t.string 'employment'
    t.string 'not_in_labor'
    t.string 'income_source'
    t.string 'school_attendance'
    t.string 'legal_status'
    t.string 'smi_sed'
    t.bigint 'client_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider_gateway_id'
    t.index ['client_id'], name: 'index_client_profiles_on_client_id'
  end

  create_table 'clients', force: :cascade do |t|
    t.string 'client_id'
    t.string 'first_name'
    t.string 'middle_name'
    t.string 'last_name'
    t.string 'suffix'
    t.string 'first_name_alt'
    t.string 'last_name_alt'
    t.string 'ssn'
    t.string 'dob'
    t.string 'gender'
    t.string 'sexual_orientation'
    t.string 'race'
    t.string 'ethnicity'
    t.string 'primary_language'
    t.string 'client_key'
    t.date 'effective_start_date'
    t.bigint 'provider_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider_gateway_id'
    t.index ['client_key'], name: 'index_clients_on_client_key'
    t.index ['provider_id'], name: 'index_clients_on_provider_id'
  end

  create_table 'clinical_profiles', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'provider_id'
    t.string 'client_id'
    t.date 'effective_start_date'
    t.string 'smi_sed'
    t.string 'co_occurring_sud_mh'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider_gateway_id'
  end

  create_table 'denial_reasons', force: :cascade do |t|
    t.string 'denial_reason_code', null: false
    t.string 'denial_reason_description', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['denial_reason_code'], name: 'index_denial_reason_code'
  end

  create_table 'denied_claims_with_reasons', force: :cascade do |t|
    t.string 'claim_id'
    t.string 'claim_tcn', limit: 17, null: false
    t.string 'denial_reason_code', null: false
    t.string 'denial_reason', null: false
    t.string 'tcn_line_item_number'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['claim_tcn'], name: 'index_claim_tcn'
  end

  create_table 'diagnoses', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'client_key'
    t.string 'diagnosis_code_version'
    t.string 'diagnosis_code'
    t.string 'diagnosis_category'
    t.string 'diagnosis_order'
    t.date 'diagnosis_removal_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider_gateway_id'
  end

  create_table 'dla20s', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'client_key'
    t.date 'dla_assessment_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.float 'dla_average_score'
    t.string 'provider_gateway_id'
  end

  create_table 'dw_medicaid_claims', force: :cascade do |t|
    t.string 'dw_adjudication_date', null: false
    t.string 'dw_adjudication_status', null: false
    t.string 'dw_admitting_diagnosis'
    t.string 'dw_admitting_diagnosis_code'
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
    t.string 'dw_modifier'
    t.string 'dw_other_diagnosis_code'
    t.integer 'dw_paid_units'
    t.string 'dw_phone_number'
    t.string 'dw_place_of_service'
    t.string 'dw_place_of_service_code'
    t.string 'dw_pre_authorization_number'
    t.string 'dw_primary_diagnosis'
    t.string 'dw_primary_diagnosis_code'
    t.string 'dw_procedure'
    t.string 'dw_procedure_code'
    t.string 'dw_race'
    t.string 'dw_remittance_number'
    t.string 'dw_revenue_code'
    t.string 'dw_revenue_code_description'
    t.integer 'dw_submitted_units'
    t.string 'dw_tcn_line_item_number'
    t.string 'dw_ward_code'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.decimal 'dw_mco_encounter_paid_amount', precision: 18, scale: 2
    t.decimal 'dw_billed_amount', precision: 18, scale: 2
    t.decimal 'dw_paid_amount', precision: 18, scale: 2
  end

  create_table 'episodes', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'provider_id'
    t.date 'effective_update_date'
    t.string 'collateral'
    t.string 'record_type'
    t.date 'admission_date'
    t.string 'treatment_setting'
    t.date 'discharge_date'
    t.date 'last_contact_date'
    t.string 'admission_id'
    t.string 'discharge_reason'
    t.date 'service_request_date'
    t.string 'num_of_prior_su_episodes'
    t.string 'referral_source'
    t.string 'criminal_justice_referral'
    t.string 'primary_payment_source'
    t.string 'health_insurance'
    t.string 'medicaid_id'
    t.string 'pregnant'
    t.string 'self_help_group_admission'
    t.string 'self_help_group_discharge'
    t.string 'arrests_past_30days_admission'
    t.string 'arrests_past_30days_discharge'
    t.bigint 'client_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider_gateway_id'
    t.index ['client_id'], name: 'index_episodes_on_client_id'
    t.index ['episode_key'], name: 'index_episodes_on_episode_key', unique: true
  end

  create_table 'list_co_occurring_statuses', force: :cascade do |t|
    t.string 'co_occurring_sud_mh_code', null: false
    t.string 'co_occurring_sud_mh'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['co_occurring_sud_mh_code'], name: 'index_co_occurring_sud_mh_code'
  end

  create_table 'list_collateral_statuses', force: :cascade do |t|
    t.string 'collateral_status_code', null: false
    t.string 'collateral_status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['collateral_status_code'], name: 'index_collateral_status_code'
  end

  create_table 'list_criminal_justice_referrals', force: :cascade do |t|
    t.string 'criminal_justice_referral_code', null: false
    t.string 'criminal_justice_referral'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['criminal_justice_referral_code'], name: 'index_criminal_justice_referral_code'
  end

  create_table 'list_diagnosis_icd10_codes', force: :cascade do |t|
    t.string 'diagnosis_code', null: false
    t.string 'diagnosis_short_description'
    t.string 'diagnosis_long_description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['diagnosis_code'], name: 'index_diagnosis_code'
  end

  create_table 'list_discharge_reasons', force: :cascade do |t|
    t.string 'discharge_reason_code', null: false
    t.string 'discharge_reason'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['discharge_reason_code'], name: 'index_discharge_reason_code'
  end

  create_table 'list_educations', force: :cascade do |t|
    t.string 'education_code', null: false
    t.string 'education'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['education_code'], name: 'index_education_code'
  end

  create_table 'list_employments', force: :cascade do |t|
    t.string 'employment_code', null: false
    t.string 'employment'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employment_code'], name: 'index_employment_code'
  end

  create_table 'list_ethnicities', force: :cascade do |t|
    t.string 'ethnicity_code', null: false
    t.string 'ethnicity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['ethnicity_code'], name: 'index_ethnicity_code'
  end

  create_table 'list_genders', force: :cascade do |t|
    t.string 'gender_code', null: false
    t.string 'gender'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['gender_code'], name: 'index_gender_code'
  end

  create_table 'list_health_insurances', force: :cascade do |t|
    t.string 'health_insurance_code', null: false
    t.string 'health_insurance'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['health_insurance_code'], name: 'index_health_insurance_code'
  end

  create_table 'list_income_sources', force: :cascade do |t|
    t.string 'income_source_code', null: false
    t.string 'income_source'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['income_source_code'], name: 'index_income_source_code'
  end

  create_table 'list_languages', force: :cascade do |t|
    t.string 'primary_language_code', null: false
    t.string 'primary_language'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['primary_language_code'], name: 'index_primary_language_code'
  end

  create_table 'list_legal_statuses', force: :cascade do |t|
    t.string 'legal_status_code', null: false
    t.string 'legal_status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['legal_status_code'], name: 'index_legal_status_code'
  end

  create_table 'list_living_arrangements', force: :cascade do |t|
    t.string 'living_arrangements_code', null: false
    t.string 'living_arrangements'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['living_arrangements_code'], name: 'index_living_arrangements_code'
  end

  create_table 'list_marital_statuses', force: :cascade do |t|
    t.string 'marital_status_code', null: false
    t.string 'marital_status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['marital_status_code'], name: 'index_marital_status_code'
  end

  create_table 'list_not_in_labor_details', force: :cascade do |t|
    t.string 'not_in_labor_code', null: false
    t.string 'not_in_labor'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['not_in_labor_code'], name: 'index_not_in_labor_code'
  end

  create_table 'list_opioid_therapy_uses', force: :cascade do |t|
    t.string 'opioid_therapy_code', null: false
    t.string 'opioid_therapy'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['opioid_therapy_code'], name: 'index_opioid_therapy_code'
  end

  create_table 'list_pregnant_statuses', force: :cascade do |t|
    t.string 'pregnant_code', null: false
    t.string 'pregnant'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['pregnant_code'], name: 'index_pregnant_code'
  end

  create_table 'list_primary_payment_sources', force: :cascade do |t|
    t.string 'primary_payment_source_code', null: false
    t.string 'primary_payment_source'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['primary_payment_source_code'], name: 'index_primary_payment_source_code'
  end

  create_table 'list_races', force: :cascade do |t|
    t.string 'race_code', null: false
    t.string 'race'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['race_code'], name: 'index_race_code'
  end

  create_table 'list_record_types', force: :cascade do |t|
    t.string 'record_type_code', null: false
    t.string 'record_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['record_type_code'], name: 'index_record_type_code'
  end

  create_table 'list_referral_sources', force: :cascade do |t|
    t.string 'referral_source_code', null: false
    t.string 'referral_source'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['referral_source_code'], name: 'index_referral_source_code'
  end

  create_table 'list_school_attendance_statuses', force: :cascade do |t|
    t.string 'school_attendance_code', null: false
    t.string 'school_attendance'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['school_attendance_code'], name: 'index_school_attendance_code'
  end

  create_table 'list_self_help_group_attendance_frequencies', force: :cascade do |t|
    t.string 'self_help_group_admission_code', null: false
    t.string 'self_help_group_admission'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['self_help_group_admission_code'], name: 'index_self_help_group_admission_code'
  end

  create_table 'list_sexual_orientations', force: :cascade do |t|
    t.string 'sexual_orientation_code', null: false
    t.string 'sexual_orientation'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['sexual_orientation_code'], name: 'index_sexual_orientation_code'
  end

  create_table 'list_smi_sed_statuses', force: :cascade do |t|
    t.string 'smi_sed_code', null: false
    t.string 'smi_sed'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['smi_sed_code'], name: 'index_smi_sed_code'
  end

  create_table 'list_substance_names', force: :cascade do |t|
    t.string 'substance_name_code', null: false
    t.string 'substance_name'
    t.string 'detail_substance_name_code'
    t.string 'detail_substance_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['detail_substance_name_code'], name: 'index_detail_substance_name_code'
    t.index ['substance_name_code'], name: 'index_substance_name_code'
  end

  create_table 'list_substance_use_frequencies', force: :cascade do |t|
    t.string 'primary_su_frequency_admission_code', null: false
    t.string 'primary_su_frequency_admission'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['primary_su_frequency_admission_code'], name: 'index_primary_su_frequency_admission_code'
  end

  create_table 'list_substance_use_routes', force: :cascade do |t|
    t.string 'primary_su_route_code', null: false
    t.string 'primary_su_route'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['primary_su_route_code'], name: 'index_primary_su_route_code'
  end

  create_table 'list_treatment_settings', force: :cascade do |t|
    t.string 'treatment_setting_code', null: false
    t.string 'treatment_setting'
    t.string 'asam_level'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['treatment_setting_code'], name: 'index_treatment_setting_code'
  end

  create_table 'list_veteran_statuses', force: :cascade do |t|
    t.string 'veteran_status_code', null: false
    t.string 'veteran_status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['veteran_status_code'], name: 'index_veteran_status_code'
  end

  create_table 'master_claims', force: :cascade do |t|
    t.string 'claim_record_id', null: false
    t.date 'adjudication_date', null: false
    t.string 'admitting_diagnosis'
    t.string 'admitting_diagnosis_code'
    t.integer 'age_as_of_first_date_of_service'
    t.date 'billing_date', null: false
    t.bigint 'billing_patient_account'
    t.string 'billing_provider'
    t.string 'billing_provider_npi'
    t.string 'billing_provider_taxonomy'
    t.string 'billing_provider_type'
    t.string 'billing_provider_type_code', null: false
    t.string 'claim_coverage_type', null: false
    t.string 'claim_process_level'
    t.string 'claim_processing_status'
    t.string 'claim_tcn', limit: 17
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
    t.text 'full_address'
    t.string 'full_name'
    t.string 'gender', null: false
    t.bigint 'header_diagnosis_group_key'
    t.date 'last_date_of_service'
    t.string 'last_name'
    t.string 'middle_name'
    t.string 'modifier'
    t.string 'original_tcn_of_adjusted_claim', limit: 17
    t.string 'other_diagnosis_code'
    t.integer 'paid_units'
    t.string 'phone_number'
    t.string 'place_of_service'
    t.integer 'place_of_service_code'
    t.bigint 'pre_authorization_number'
    t.string 'primary_diagnosis'
    t.string 'primary_diagnosis_code'
    t.string 'procedure'
    t.string 'procedure_code'
    t.string 'race'
    t.bigint 'remittance_number'
    t.string 'revenue_code'
    t.string 'revenue_code_description'
    t.integer 'submitted_units'
    t.integer 'tcn_line_item_number'
    t.integer 'ward_code'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'adjudication_status', null: false
    t.string 'claim_information_source', null: false
    t.decimal 'billed_amount', precision: 18, scale: 2
    t.decimal 'mco_encounter_paid_amount', precision: 18, scale: 2
    t.decimal 'paid_amount', precision: 18, scale: 2
    t.integer 'billing_medicaid_id'
    t.integer 'billing_provider_id', null: false
    t.index ['claim_record_id'], name: 'index_claim_record_id'
    t.index ['claim_tcn'], name: 'index_master_claims_on_claim_tcn'
  end

  create_table 'master_client_registries', force: :cascade do |t|
    t.bigint 'master_client_registry_id', null: false
    t.string 'master_client_id', null: false
    t.bigint 'billing_patient_account'
    t.date 'date_of_birth', null: false
    t.string 'first_name'
    t.text 'full_address'
    t.string 'full_name', null: false
    t.string 'gender', null: false
    t.string 'last_name'
    t.string 'middle_name'
    t.string 'phone_number'
    t.string 'race'
    t.string 'record_source', default: 'master_claims', null: false
    t.string 'record_source_id', null: false
    t.date 'record_source_date', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'billing_medicaid_id'
    t.integer 'billing_provider_id'
    t.index ['master_client_id'], name: 'index_master_client_id'
    t.index ['master_client_registry_id'], name: 'index_master_client_registry_id'
  end

  create_table 'master_clients', force: :cascade do |t|
    t.string 'master_client_id', null: false
    t.date 'date_of_birth', null: false
    t.string 'first_name'
    t.string 'full_name', null: false
    t.string 'gender', null: false
    t.string 'last_name'
    t.string 'middle_name'
    t.string 'record_source', default: 'master_claims', null: false
    t.string 'record_source_id', null: false
    t.date 'record_source_date', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['full_name'], name: 'index_master_clients_on_full_name'
    t.index ['master_client_id'], name: 'index_master_client_id'
  end

  create_table 'medicaid_providers', force: :cascade do |t|
    t.string 'dhcf_system_provider_id', null: false
    t.date 'information_date', null: false
    t.string 'legacy_provider_id'
    t.boolean 'organization_indicator'
    t.string 'pharmacy_classification_code'
    t.string 'provider_application_status'
    t.string 'provider_billing_code'
    t.string 'provider_dea'
    t.string 'provider_facility_type_code'
    t.string 'provider_first_name'
    t.string 'provider_full_name'
    t.string 'provider_id'
    t.string 'provider_last_name'
    t.string 'provider_location_code'
    t.boolean 'provider_mc_indicator'
    t.string 'provider_middle_name'
    t.string 'provider_npi'
    t.string 'provider_suffix'
    t.string 'provider_type'
    t.integer 'provider_type_code'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['dhcf_system_provider_id'], name: 'index_dhcf_system_provider_id'
  end

  create_table 'mhgps_enrollments', force: :cascade do |t|
    t.string 'mhgps_id', null: false
    t.string 'medicaid_id'
    t.string 'full_name', null: false
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.date 'date_of_birth', null: false
    t.string 'current_medicaid_id', null: false
    t.date 'mhgps_start_date', null: false
    t.date 'mhgps_end_date'
    t.string 'phone_number'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['mhgps_id'], name: 'index_mhgps_id'
  end

  create_table 'mmis_medicaid_claims', force: :cascade do |t|
    t.string 'mmis_adjudication_date', null: false
    t.string 'mmis_adjudication_status', null: false
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
    t.integer 'mmis_paid_units'
    t.string 'mmis_place_of_service'
    t.string 'mmis_place_of_service_code'
    t.string 'mmis_pre_authorization_number'
    t.string 'mmis_primary_diagnosis_code'
    t.string 'mmis_procedure'
    t.string 'mmis_procedure_code'
    t.string 'mmis_remittance_number'
    t.integer 'mmis_submitted_units'
    t.string 'mmis_tcn_line_item_number'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.decimal 'mmis_billed_amount', precision: 18, scale: 2
    t.decimal 'mmis_paid_amount', precision: 18, scale: 2
  end

  create_table 'phones', force: :cascade do |t|
    t.string 'area_code', default: ''
    t.string 'number', default: ''
    t.string 'extension', default: ''
    t.string 'full_phone_number', default: ''
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'phone_id'
    t.string 'client_key'
    t.date 'effective_start_date'
    t.bigint 'clients_id'
    t.string 'provider_gateway_id'
    t.index ['clients_id'], name: 'index_phones_on_clients_id'
  end

  create_table 'place_of_services', force: :cascade do |t|
    t.integer 'place_of_service_code', null: false
    t.string 'place_of_service_name', null: false
    t.text 'place_of_service_description', null: false
    t.text 'special_considerations'
    t.date 'effective_date'
    t.boolean 'effective_prior_to_2003'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['place_of_service_code'], name: 'index_place_of_service_code'
  end

  create_table 'procedure_modifiers', force: :cascade do |t|
    t.string 'modifier_code', null: false
    t.string 'modifier_description', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['modifier_code'], name: 'index_modifier_code'
  end

  create_table 'procedures', force: :cascade do |t|
    t.string 'procedure_code', null: false
    t.string 'procedure_description', null: false
    t.string 'payment_unit'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['procedure_code'], name: 'index_procedure_code'
  end

  create_table 'provider_type', force: :cascade do |t|
    t.string 'provider_type_code', null: false
    t.string 'provider_type_description', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['provider_type_code'], name: 'index_provider_type_code'
  end

  create_table 'substance_uses', force: :cascade do |t|
    t.string 'episode_key'
    t.string 'client_key'
    t.string 'substance_code'
    t.string 'substance_name'
    t.string 'detailed_drug_code'
    t.integer 'age_at_first_use'
    t.string 'substance_use_route_code'
    t.string 'substance_use_frequency_at_admission_code'
    t.string 'substance_use_frequency_at_admission'
    t.string 'substance_use_frequency_at_discharge_code'
    t.string 'substance_use_frequency_at_discharge'
    t.string 'opioid_therapy'
    t.date 'substance_info_removal_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'substance_order'
    t.string 'substance_use_route'
    t.string 'provider_gateway_id'
  end

  add_foreign_key 'addresses', 'clients', column: 'clients_id'
  add_foreign_key 'cafas_pecfases', 'episodes', column: 'episode_key', primary_key: 'episode_key'
  add_foreign_key 'claim_addresses', 'master_clients'
  add_foreign_key 'claim_medicaid_ids', 'master_clients'
  add_foreign_key 'claim_phone_numbers', 'master_clients'
  add_foreign_key 'clinical_profiles', 'episodes', column: 'episode_key', primary_key: 'episode_key'
  add_foreign_key 'diagnoses', 'episodes', column: 'episode_key', primary_key: 'episode_key'
  add_foreign_key 'dla20s', 'episodes', column: 'episode_key', primary_key: 'episode_key'
  add_foreign_key 'phones', 'clients', column: 'clients_id'
  add_foreign_key 'substance_uses', 'episodes', column: 'episode_key', primary_key: 'episode_key'
end
