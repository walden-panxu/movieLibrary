class AddMovieColumn < ActiveRecord::Migration
  def change
  	add_column :movies,:movieDescribe,:text
  end
end
