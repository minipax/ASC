class CreateSocialContracts < ActiveRecord::Migration
  def change
    create_table :social_contracts do |t|
      t.text :description
      t.text :conclusion
      t.references :group

      t.timestamps
    end
  end
end
