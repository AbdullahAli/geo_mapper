class Address < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :ip_address

  acts_as_gmappable :process_geocoding => false

  # geocoded_by :address
  # after_validation :geocode

  geocoded_by :ip_address,

  :latitude => :latitude, :longitude => :longitude
  after_validation :geocode

  def gmaps4rails_address
    "#{name}, #{state}"
  end
end
