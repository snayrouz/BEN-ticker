class Bitcoin < ApplicationRecord
  validates :date,
            :open,
            :high,
            :low,
            :close,
            :volume,
            presence: true

  def self.average_open
    group_by_year(:date)
    .average(:open)
  end

  def self.average_high
    group_by_year(:date)
    .average(:high)
  end

  def self.average_low
    group_by_year(:date)
    .average(:low)
  end

  def self.average_close
    group_by_year(:date)
    .average(:close)
  end
end
