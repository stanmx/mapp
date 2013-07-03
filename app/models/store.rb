class Store < ActiveRecord::Base
  attr_accessible :address, :category_id, :gmaps, :latitude, :longitude, :name
  belongs_to :category
  acts_as_gmappable

  def gmaps4rails_address
    "#{address}" 
  end

  def gmaps4rails_infowindow
    "<h3>#{category.title}</h3>" 
  end

end
