class Bitcoin < ApplicationRecord
  validates :date,
            :open,
            :high,
            :low,
            :close,
            :volume,
            presence: true


end
