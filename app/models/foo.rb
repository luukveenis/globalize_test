class Foo < ApplicationRecord
  has_many :foos_bars
  has_many :bars, through: :foos_bars

  translates :name
end
