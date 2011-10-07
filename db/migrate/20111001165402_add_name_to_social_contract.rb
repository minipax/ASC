class AddNameToSocialContract < ActiveRecord::Migration
  def change
    add_column :social_contracts, :name, :string
  end
end
