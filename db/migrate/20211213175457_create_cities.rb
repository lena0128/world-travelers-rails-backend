class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :image
      t.string :summary
      t.string :content
      t.integer :likes

      t.timestamps
    end
  end
end
