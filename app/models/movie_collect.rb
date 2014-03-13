#
#
#
class MovieCollect < ActiveRecord::Base
	belongs_to :movieLibrary
	belongs_to :movie
end
