class Ethereum < ApplicationRecord
  validates :date,
            :open,
            :high,
            :low,
            :close,
            :volume,
            presence: true

  def self.average_close
    group_by_month(:date)
    .average(:close)
  end
end
