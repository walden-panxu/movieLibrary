#
#
#
class Movie < ActiveRecord::Base
	has_many :movieComments
	has_many :movieCollects
	has_and_belongs_to_many :actors
	has_and_belongs_to_many :directors
end
