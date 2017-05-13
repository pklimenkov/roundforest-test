# class to represent books table
class Book < ActiveRecord::Base
  has_many :single_sorts
  has_many :lists, through: :single_sorts
end
