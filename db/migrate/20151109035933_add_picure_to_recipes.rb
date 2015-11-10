class AddPicureToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :picutre, :string
  end
end
