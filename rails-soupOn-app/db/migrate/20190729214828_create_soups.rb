class CreateSoups < ActiveRecord::Migration[5.2]
  def change
    create_table :soups do |t|
      t.string :name
      t.string :ingredients
      t.string :img_url

      t.timestamps
    end
  end
end
