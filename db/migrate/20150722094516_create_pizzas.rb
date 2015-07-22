class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :doe_kind
      t.string :toppings

      t.timestamps
    end
  end
end
