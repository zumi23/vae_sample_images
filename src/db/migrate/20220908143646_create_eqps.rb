class CreateEqps < ActiveRecord::Migration[6.0]
  def change
    create_table :eqps do |t|
      t.integer :eqp_id
      t.integer :def
      t.integer :mdef
      t.integer :param_0
      t.integer :param_1
      t.integer :param_2
      t.integer :param_3
      t.integer :param_4

      t.timestamps
    end
  end
end
