# Require presence of all fields
# Validate format of email address
# Validate format of zip_code

class Person < ActiveRecord::Base
  validates :first_name, :last_name, :email, :address, :city, :state, :zip_code, presence: true
  validates_format_of :email,
                      :with => %r{\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z?},
                      :message => 'should be xxxx@xxxxxx.xxx'
  validates_format_of :zip_code,
                      :with => %r{\d{5}},
                      :message => 'should be 5 digits such as 80021'
end
