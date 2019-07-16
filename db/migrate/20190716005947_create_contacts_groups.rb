class CreateContactsGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts_groups do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps
    end
  end
end
