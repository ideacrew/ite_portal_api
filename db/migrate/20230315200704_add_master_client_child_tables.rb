class AddMasterClientChildTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'claim_medicaid_ids' do |t|
      t.string 'medicaid_id_id', null: false
      t.string 'master_client_id', null: false
      t.string 'medicaid_id', null: false
      t.string 'eligibility_program_code', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['medicaid_id_id'], name: 'index_medicaid_id_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'claim_phone_numbers' do |t|
      t.string 'phone_number_id', null: false
      t.string 'master_client_id', null: false
      t.string 'phone_number', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['phone_number_id'], name: 'index_phone_number_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'claim_addresses' do |t|
      t.string 'address_id', null: false
      t.string 'master_client_id', null: false
      t.string 'full_address', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['address_id'], name: 'index_address_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

  end
end
