require 'active_record'

class CreateCatsTable < ActiveRecord::Migration[5.0]
  def up
    unless ActiveRecord::Base.connection.table_exists?(:cats)
      create_table(:cats) do |table|
        #   table.integer :id, :primary_key, null: false
        table.string :name, null: false
        table.integer :age, null: false
        table.string :breed

        table.timestamps
      end
    end
  end

  def down
    drop_table :cats
  end
end
