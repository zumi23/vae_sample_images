class CreateEggs < ActiveRecord::Migration[6.0]
  def change
    create_table :eggs do |t|
      t.integer :egg_id
      t.string :egg_name

      t.timestamps
    end
  end
end
