class Bar < ApplicationRecord
  has_many :foos_bars
  has_many :foos, through: :foos_bars

  default_scope ->{ order(name: :asc) }

  translates :name
end
