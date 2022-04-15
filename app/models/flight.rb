class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  scope :arrival, ->(id) { where(arrival_airport_id: id) }
  scope :departure, ->(id) { where(departure_airport_id: id) }
  scope :on_date, ->(date) { where(date: date) }

  def self.valid_dates
    select(:date).distinct.map(&:date).sort
  end
end
