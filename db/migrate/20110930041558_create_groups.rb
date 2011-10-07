class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :apiKey
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
