class Group < ActiveRecord::Base
	has_and_belongs_to_man :users
	has_many  :social_contracts
end
