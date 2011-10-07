class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name
      t.string :description
      t.references :multiple_choice

      t.timestamps
    end
    add_index :choices, :multiple_choice_id
  end
end
