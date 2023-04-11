class UpdateTables < ActiveRecord::Migration[7.0]
  def change
    remove_column :client_profiles, :social_id
    remove_column :clinical_profiles, :clinical_id
    remove_column :episodes, :effective_start_date
    remove_column :clients, :effective_update_date
    remove_column :cafas_pecfases, :cafas_or_pecfas_total_score
    remove_column :dla20s, :dla_average_score
    add_column :cafas_pecfases, :cafas_or_pecfas_total_score, :float
    add_column :dla20s, :dla_average_score, :float
    remove_column :substance_uses, :substance_order
    remove_column :substance_uses, :substance_use_route
    add_column :substance_uses, :substance_order, :int
    add_column :substance_uses, :substance_use_route, :string
    add_reference :diagnoses, :episode, foreign_key: true
    add_reference :cafas_pecfases, :episode, foreign_key: true
    add_reference :substance_uses, :episode, foreign_key: true
    add_reference :dla20s, :episode, foreign_key: true
  end
end
