class AddLookupTables22thru26 < ActiveRecord::Migration[7.0]
  def change
    create_table "list_pregnant_statuses" do |t|
      t.string "pregnant_code", null: false
      t.string "pregnant"
      t.timestamps
      t.index ["pregnant_code"], name: "index_pregnant_code"
    end

    create_table "list_criminal_justice_referrals" do |t|
      t.string "criminal_justice_referral_code", null: false
      t.string "criminal_justice_referral"
      t.timestamps
      t.index ["criminal_justice_referral_code"], name: "index_criminal_justice_referral_code"
    end

    create_table "list_primary_payment_sources" do |t|
      t.string "primary_payment_source_code", null: false
      t.string "primary_payment_source"
      t.timestamps
      t.index ["primary_payment_source_code"], name: "index_primary_payment_source_code"
    end

    create_table "list_health_insurances" do |t|
      t.string "health_insurance_code", null: false
      t.string "health_insurance"
      t.timestamps
      t.index ["health_insurance_code"], name: "index_health_insurance_code"
    end

    create_table "list_self_help_group_attendance_frequencies" do |t|
      t.string "self_help_group_admission_code", null: false
      t.string "self_help_group_admission"
      t.timestamps
      t.index ["self_help_group_admission_code"], name: "index_self_help_group_admission_code"
    end
  end
end
