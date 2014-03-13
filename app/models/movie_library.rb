#
#
#
class MovieLibrary < ActiveRecord::Base
	belongs_to :user
	has_many :movieCollects
end
