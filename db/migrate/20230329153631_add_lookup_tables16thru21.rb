class AddLookupTables16thru21 < ActiveRecord::Migration[7.0]
  def change
    create_table "list_school_attendance_statuses" do |t|
      t.string "school_attendance_code", null: false
      t.string "school_attendance"
      t.timestamps
      t.index ["school_attendance_code"], name: "index_school_attendance_code"
    end

    create_table "list_legal_statuses" do |t|
      t.string "legal_status_code", null: false
      t.string "legal_status"
      t.timestamps
      t.index ["legal_status_code"], name: "index_legal_status_code"
    end

    create_table "list_sexual_orientations" do |t|
      t.string "sexual_orientation_code", null: false
      t.string "sexual_orientation"
      t.timestamps
      t.index ["sexual_orientation_code"], name: "index_sexual_orientation_code"
    end

    create_table "list_veteran_statuses" do |t|
      t.string "veteran_status_code", null: false
      t.string "veteran_status"
      t.timestamps
      t.index ["veteran_status_code"], name: "index_veteran_status_code"
    end

    create_table "list_not_in_labor_details" do |t|
      t.string "not_in_labor_code", null: false
      t.string "not_in_labor"
      t.timestamps
      t.index ["not_in_labor_code"], name: "index_not_in_labor_code"
    end

    create_table "list_income_sources" do |t|
      t.string "income_source_code", null: false
      t.string "income_source"
      t.timestamps
      t.index ["income_source_code"], name: "index_income_source_code"
    end
  end
end
