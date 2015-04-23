class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :available_points, default: 0
      t.integer :redeem_points, default: 0

      t.timestamps null: false
    end
  end
end
