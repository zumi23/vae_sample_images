class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.integer :type_id
      t.string :type_name

      t.timestamps
    end
  end
end
