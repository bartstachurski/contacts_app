class Contact < ApplicationRecord
  def friendly_updated_at
    return updated_at.strftime("Updated on %m/%d/%Y at %I:%M%p")
  end

  def full_name
    return "#{first_name} #{last_name}"
  end
end
