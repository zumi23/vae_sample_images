class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :name_id
      t.string :name
      t.integer :type1_id
      t.integer :type2_id
      t.integer :egg1_id
      t.integer :egg2_id
      t.float :height
      t.float :weight
      t.integer :h_param
      t.integer :a_param
      t.integer :b_param
      t.integer :c_param
      t.integer :d_param
      t.integer :s_param

      t.timestamps
    end
  end
end
