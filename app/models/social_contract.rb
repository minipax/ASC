class SocialContract < ActiveRecord::Base
  belongs_to :group
  has_many :referendums

  accepts_nested_attributes_for :referendums
end
