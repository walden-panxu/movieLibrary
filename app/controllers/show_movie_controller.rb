#coding:utf-8

# Author: pan <panxuzhengxuxin@gmail.com>
# Package: app.controller
# Since 1.0
# 
# ShowMovieController类是一个影片展示类
# ShowMovieController类有两个方法：
# 		:movieView方法从数据库中取出影片，并展示影片		
# 		:classView方法从数据库中取出类型影片，并展示影片，方法接收影片类型作为参数

class ShowMovieController < ActionController::Base
	
	#关闭整个控制器布局
	layout :nil
	
	#展示影片
	def movieView
		#搜索新片
		@new_movie=Movie.where(:screenTime=>(Time.now.midnight-1.months)..(Time.now.midnight)).limit(18);
		@goode_movie=Movie.where("screenTime<:time",{:time=>Time.now.midnight-1.months}).order(:movieScore).limit(10)
		@love_movie=Movie.where("movieClass='爱情'").order(:movieScore).limit(5)
		render :movieView
	end

	#展示类型影片
	def classView
		#搜索新片
		@new_movie=Movie.where(:screenTime=>(Time.now.midnight-1.months)..(Time.now.midnight)).limit(18);
		@class_name=params[:id]
		if params[:id]=="佳片推荐"
			@class_movie=Movie.paginate :page=>params[:page],
										:order =>'movieScore DESC',
										:per_page=>15
			render :classView
		else
			@class_movie=Movie.paginate :page=>params[:page],
										:order =>'movieScore DESC',
										:per_page=>15,
										:conditions=>["movieClass=?",params[:id]]
			render :classView																		
		end
	end
end	