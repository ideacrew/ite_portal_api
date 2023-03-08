class CreateInitialTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'clients' do |t|
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
      t.date 'effective_update_date'
      t.bigint 'provider_id'
      t.timestamps
      t.index ['client_key'], name: 'index_clients_on_client_key'
      t.index ['provider_id'], name: 'index_clients_on_provider_id'
    end

    create_table 'episodes' do |t|
      t.string 'episode_key'
      t.string 'provider_id'
      t.date 'effective_start_date'
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
      t.timestamps
      t.index ['client_id'], name: 'index_episodes_on_client_id'
    end

    create_table 'client_profiles' do |t|
      t.string 'social_id'
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
      t.timestamps
      t.index ['client_id'], name: 'index_client_profiles_on_client_id'
    end

    create_table 'clinical_profiles' do |t|
      t.string 'clinical_id'
      t.string 'episode_key'
      t.string 'provider_id'
      t.string 'client_id'
      t.date 'effective_start_date'
      t.string 'smi_sed'
      t.string 'co_occurring_sud_mh'
      t.bigint 'episode_id'
      t.timestamps
      t.index ['episode_id'], name: 'index_clinical_profiles_on_episode_id'
    end

    create_table 'phones' do |t|
      t.string 'area_code', default: ''
      t.string 'number', default: ''
      t.string 'extension', default: ''
      t.string 'full_phone_number', default: ''
      t.timestamps
      t.string 'phone_id'
      t.string 'client_key'
      t.date 'effective_start_date'
      t.string 'phonable_type'
      t.bigint 'phonable_id'
      t.index %w[phonable_type phonable_id], name: 'index_phones_on_phonable'
    end

    create_table 'addresses' do |t|
      t.string 'address_line1'
      t.string 'address_line2'
      t.string 'dc_ward'
      t.string 'city'
      t.string 'state'
      t.string 'zip'
      t.date 'effective_start_date'
      t.string 'addressable_type'
      t.bigint 'addressable_id'
      t.index %w[addressable_type addressable_id], name: 'index_addresses_on_addressable'
      t.timestamps
    end

    create_table 'cafas_pecfases' do |t|
      t.string 'episode_key'
      t.string 'client_key'
      t.string 'assessment_type'
      t.decimal 'cafas_or_pecfas_total_score', precision: 18
      t.date 'cafas_or_pecfas_assessment_date'
      t.timestamps
    end

    create_table 'diagnoses' do |t|
      t.string 'episode_key'
      t.string 'client_key'
      t.string 'diagnosis_code_version'
      t.string 'diagnosis_code'
      t.string 'diagnosis_category'
      t.string 'diagnosis_order'
      t.date 'diagnosis_removal_date'
      t.timestamps
    end

    create_table 'dla20s' do |t|
      t.string 'episode_key'
      t.string 'client_key'
      t.decimal 'dla_average_score', precision: 18
      t.date 'dla_assessment_date'
      t.timestamps
    end

    create_table 'emails' do |t|
      t.string 'address'
      t.bigint 'office_location_id'
      t.index ['office_location_id'], name: 'index_emails_on_office_location_id'
      t.timestamps
    end

    create_table 'substance_uses' do |t|
      t.string 'episode_key'
      t.string 'client_key'
      t.string 'substance_code'
      t.string 'substance_name'
      t.string 'substance_order'
      t.string 'detailed_drug_code'
      t.integer 'age_at_first_use'
      t.string 'substance_use_route_code'
      t.integer 'substance_use_route'
      t.string 'substance_use_frequency_at_admission_code'
      t.string 'substance_use_frequency_at_admission'
      t.string 'substance_use_frequency_at_discharge_code'
      t.string 'substance_use_frequency_at_discharge'
      t.string 'opioid_therapy'
      t.date 'substance_info_removal_date'
      t.timestamps
    end
  end
end
