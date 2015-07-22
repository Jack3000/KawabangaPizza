class AddImageToPizzaPics < ActiveRecord::Migration
  def change
    add_column :pizza_pics, :image, :string
  end
end
