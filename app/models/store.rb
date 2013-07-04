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

  def self.search(search)
    result = order('created_at DESC')
    result = result.joins(:category).where('name LIKE ? OR categories.title LIKE ?', "%#{search}%", "%#{search}%").order('created_at DESC') if search.present?
    result
  end

end
