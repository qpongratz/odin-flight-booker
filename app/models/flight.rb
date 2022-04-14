class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def self.valid_dates
    select(:date).distinct.map(&:date).sort
  end
end
