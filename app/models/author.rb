class Author < ActiveRecord::Base
  has_many :book

  def to_s

  "#{first_name} #{last_name}"

  end
end
