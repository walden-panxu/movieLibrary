#coding:utf-8

# Author: pan <panxuzhengxuxin@gmail.com>
# Package: app.controller
# Since 1.0
# 
# PlayController类是一个影片播放类
# PlayController类有一个方法：
# 		:showAndPlay方法展示我收藏的影片并播放点中的影片，方法接收影片名作为参数		
# 		

class PlayController < ActionController::Base

	layout :nil
	
	#展示我收藏的影片并播放点中的影片
	def showAndPlay
		if params[:id]!=nil
			@movie_name=params[:id]
			@movie_url=params[:id]+'.mp4'
			@directors=Movie.find(1).directors
			@actors=Movie.find_by_movieName(params[:id].to_s).actors
			render :showAndPlay
		else

			render :showAndPlay
		end	
	end
end