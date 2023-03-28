class AddLookupTables11thru15 < ActiveRecord::Migration[7.0]
  def change
    create_table "list_employments" do |t|
      t.string "employment_code", null: false
      t.string "employment"
      t.timestamps
      t.index ["employment_code"], name: "index_employment_code"
    end

    create_table "list_referral_sources" do |t|
      t.string "referral_source_code", null: false
      t.string "referral_source"
      t.timestamps
      t.index ["referral_source_code"], name: "index_referral_source_code"
    end

    create_table "list_smi_sed_statuses" do |t|
      t.string "smi_sed_code", null: false
      t.string "smi_sed"
      t.timestamps
      t.index ["smi_sed_code"], name: "index_smi_sed_code"
    end

    create_table "list_co_occurring_statuses" do |t|
      t.string "co_occurring_sud_mh_code", null: false
      t.string "co_occurring_sud_mh"
      t.timestamps
      t.index ["co_occurring_sud_mh_code"], name: "index_co_occurring_sud_mh_code"
    end

    create_table "list_languages" do |t|
      t.string "primary_language_code", null: false
      t.string "primary_language"
      t.timestamps
      t.index ["primary_language_code"], name: "index_primary_language_code"
    end

    create_table "list_marital_statuses" do |t|
      t.string "marital_status_code", null: false
      t.string "marital_status"
      t.timestamps
      t.index ["marital_status_code"], name: "index_marital_status_code"
    end
  end
end
