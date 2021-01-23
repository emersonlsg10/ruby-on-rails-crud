class CreateBuilds < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :name
      t.integer :id_build
      t.boolean :is_like

      t.timestamps
    end
  end
end
