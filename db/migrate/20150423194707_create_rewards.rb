class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :point_value

      t.timestamps null: false
    end
  end
end
