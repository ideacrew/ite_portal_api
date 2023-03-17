class AddMasterClientChildTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'claim_medicaid_ids' do |t|
      t.string 'medicaid_id_id', null: false
      t.string 'medicaid_id', null: false
      t.string 'eligibility_program_code', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['medicaid_id_id'], name: 'index_medicaid_id_id'
    end

    create_table 'claim_phone_numbers' do |t|
      t.string 'phone_number_id', null: false
      t.string 'phone_number', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['phone_number_id'], name: 'index_phone_number_id'
    end

    create_table 'claim_addresses' do |t|
      t.string 'address_id', null: false
      t.string 'full_address', null: false
      t.date 'record_source_date', null: false
      t.timestamps
      t.index ['address_id'], name: 'index_address_id'
    end

    add_reference :claim_addresses, :master_client, index: true, foreign_key: true, null: false
    add_reference :claim_phone_numbers, :master_client, index: true, foreign_key: true, null: false
    add_reference :claim_medicaid_ids, :master_client, index: true, foreign_key: true, null: false

  end
end
