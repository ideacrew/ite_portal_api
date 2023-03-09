class RemovePolymorphics < ActiveRecord::Migration[7.0]
  def change
    remove_reference :phones, :phonable, polymorphic: true
    remove_reference :addresses, :addressable, polymorphic: true
    add_reference :phones, :clients, index: true, foreign_key: true
    add_reference :addresses, :clients, index: true, foreign_key: true
  end
end
