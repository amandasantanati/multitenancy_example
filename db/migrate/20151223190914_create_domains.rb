class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :title, null: false
      t.string :subdomain, null: false
      t.text :description

      t.timestamps null: false
    end
    add_index :domains, :subdomain
  end
end
