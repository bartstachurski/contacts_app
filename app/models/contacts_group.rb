class ContactsGroup < ApplicationRecord
  belongs_to :contact
  belongs_to :group
end
