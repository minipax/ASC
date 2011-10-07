class CreateFillInBlanks < ActiveRecord::Migration
  def change
    create_table :fill_in_blanks do |t|
      t.string :name
      t.text :subject
      t.references :social_contract

      t.timestamps
    end
    add_index :fill_in_blanks, :social_contract_id
  end
end
