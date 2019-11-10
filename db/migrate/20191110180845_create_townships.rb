class CreateTownships < ActiveRecord::Migration[6.0]
  def change
    create_table :townships do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
