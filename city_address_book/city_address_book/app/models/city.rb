# Require presence of all fields
# Validate the State is a valid state abbreviation
# Validate population of City is > 0

class City < ActiveRecord::Base
  validates :name, :population, :elevation, :state, presence: true
  validates :state, inclusion: {in: %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME
                MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA
                RI SC SD TN TX UT VT VA WA WV WI WY)}
  validates :population,
            numericality: { greater_than: 0, message: 'I better not living in zombie town!'}
end
