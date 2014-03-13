#
#
#
class User < ActiveRecord::Base
	has_many :movieComments
	has_one :movieLibrary						 
end
