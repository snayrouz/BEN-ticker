class Ethereum < ApplicationRecord
  validates :date,
            :open,
            :high,
            :low,
            :close,
            :volume,
            presence: true

end
