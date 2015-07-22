class CreatePizzaPics < ActiveRecord::Migration
  def change
    create_table :pizza_pics do |t|
      t.integer :pizza_id
      t.integer :pic_num

      t.timestamps
    end
  end
end
