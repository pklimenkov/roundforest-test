# class to represent single_sorts
class SingleSort < ActiveRecord::Base
  belongs_to :list
  belongs_to :book
end
