class Group < ApplicationRecord
  has_many :contacts_groups
  has_many :contacts, through: :contacts_groups
end
