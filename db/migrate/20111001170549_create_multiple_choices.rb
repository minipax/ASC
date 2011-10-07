class CreateMultipleChoices < ActiveRecord::Migration
  def change
    create_table :multiple_choices do |t|
      t.string :question
      t.references :social_contract

      t.timestamps
    end
    add_index :multiple_choices, :social_contract_id
  end
end
