class CreateEqp2s < ActiveRecord::Migration[6.0]
  def change
    create_table :eqp2s do |t|
      t.integer :param_d
      t.integer :param_md
      t.integer :param_1
      t.integer :param_2
      t.integer :param_3
      t.integer :param_4
      t.integer :param_5

      t.timestamps
    end
  end
end
