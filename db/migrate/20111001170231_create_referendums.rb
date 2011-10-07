class CreateReferendums < ActiveRecord::Migration
  def change
    create_table :referendums do |t|
      t.string :question
      t.references :social_contract

      t.timestamps
    end
    add_index :referendums, :social_contract_id
  end
end
