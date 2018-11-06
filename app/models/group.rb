class Group < ApplicationRecord
  has_many :group_contacts
  has_many :contacts, through: :contact_groups
end
