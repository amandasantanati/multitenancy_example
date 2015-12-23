class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :domain, index: true, foreign_key: true, null: false
      t.string :title, null: false
      t.string :slug, null: false
      t.text :description

      t.timestamps null: false
    end
    add_index :contents, :slug
  end
end
