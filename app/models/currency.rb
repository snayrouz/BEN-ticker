class Currency < ApplicationRecord
  validates :date, presence: true
  validates :currency_type, presence: true

  enum currency_type: [:bitcoin, :ethereum, :nasdaq]

  def self.average_value
    group_by_month(:date).average(:value)
  end
end
