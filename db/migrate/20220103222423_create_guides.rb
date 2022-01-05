class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :title
      t.string :body
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
