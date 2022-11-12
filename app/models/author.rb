class Author < ApplicationRecord

  validates :last_name, presence: true
  def name
    return first_name + " " + last_name
  end

  has_and_belongs_to_many :papers

end
