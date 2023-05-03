class RemoveAdjudicationNull < ActiveRecord::Migration[7.0]
  def change
    change_column :mmis_medicaid_claims, :mmis_adjudication_status, :string
    change_column :dw_medicaid_claims, :dw_adjudication_status, :string
  end
end
