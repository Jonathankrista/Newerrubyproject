class Portfolio < ActiveRecord::Base
	mount_uploaders :photos, PictureUploader
	acts_as_votable

  extend FriendlyId
  friendly_id :title, use: :slugged

	# It returns the articles whose titles contain one or more words that form the query
	def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	where("UPPER(title) like ? or category like ?", "%#{query.upcase}%", "%#{query.upcase}%")
	end
end


