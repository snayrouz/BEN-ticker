class Ethereum < ApplicationRecord
  validates :date,
            :open,
            :high,
            :low,
            :close,
            :volume,
            presence: true

  def self.average_yearly_open
    group_by_year(:date)
    .average(:open)
  end

  def self.average_monthly_open
    group_by_month(:date)
    .average(:open)
  end

  def self.average_yearly_high
    group_by_year(:date)
    .average(:high)
  end
  
  def self.average_monthly_high
    group_by_month(:date)
    .average(:high)
  end

  def self.average_yearly_low
    group_by_year(:date)
    .average(:low)
  end

  def self.average_monthly_low
    group_by_month(:date)
    .average(:low)
  end

  def self.average_yearly_close
    group_by_year(:date)
    .average(:close)
  end

  def self.average_monthly_close
    group_by_year(:date)
    .average(:close)
  end
end
