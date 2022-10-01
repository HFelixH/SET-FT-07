require 'active_record'

class CreateOwnersTable < ActiveRecord::Migration[5.0]
  def up
    create_table(:owners) do |table|
      #   table.integer :id, :primary_key, null: false
      table.string :name, null: false
      
      table.timestamps
    end

    add_reference :cats, :owner, foreign_key: true
  end

  def down
    drop_table :owners
    remove_reference :cats, :owner, foreign_key: true
  end
end
