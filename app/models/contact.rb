class Contact < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, presence: true
  # validates :email, presence: true
  has_many :contacts_groups
  has_many :groups, through: :contacts_groups

  def friendly_updated_at
    return updated_at.strftime("Updated on %m/%d/%Y at %I:%M%p")
  end

  def full_name
    return "#{first_name} #{middle_name} #{last_name}"
  end
end
