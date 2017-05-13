# class to represent lists table
class List < ActiveRecord::Base
  has_many :single_sorts
  has_many :books, through: :single_sorts

  def top_books(count)
    books.order('single_sorts.position ASC').limit(count)
  end
end
