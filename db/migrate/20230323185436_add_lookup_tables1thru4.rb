class AddLookupTables1thru4 < ActiveRecord::Migration[7.0]
  def change
    create_table 'list_record_types' do |t|
      t.string 'record_type_code', null: false
      t.string 'record_type'
      t.index ['record_type_code'], name: 'index_record_type_code'
      t.timestamps
    end

    create_table 'list_treatment_settings' do |t|
      t.string 'treatment_setting_code', null: false
      t.string 'treatment_setting'
      t.string 'asam_level'
      t.index ['treatment_setting_code'], name: 'index_treatment_setting_code'
      t.timestamps
    end

    create_table 'list_collateral_statuses' do |t|
      t.string 'collateral_status_code', null: false
      t.string 'collateral_status'
      t.index ['collateral_status_code'], name: 'index_collateral_status_code'
      t.timestamps
    end

    create_table 'list_genders' do |t|
      t.string 'gender_code', null: false
      t.string 'gender'
      t.index ['gender_code'], name: 'index_gender_code'
      t.timestamps
    end
  end
end
