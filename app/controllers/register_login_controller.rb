#coding:utf-8

# RegisterLoginController是一个实现注册和登录的类
#
#
#
# @version 1.0
#

class RegisterLoginController < ApplicationController

	layout :nil
	
	#渲染注册页面
	def show
		#render :template=>"registerLogin/show"
		render :register
	end

	#提交用户注册数据，并存入数据库
	def register
		@user=User.new
		@user.userName=params["userName"]
		@user.password=params["password"]
		@user.email=params["email"]
		@user.save
		render :login
	end

	#
	def checkName
		#
		user=User.find_by_userName(params["userName"])
		if user!=nil
			session["name"]=params["userName"]
			render :text=>"ok"
		else
			render :text=>"no"
		end
	end

	#
	def checkPassword
		#
		user=User.find_by_userName_and_password(session["name"],params["password"])
		if user!=nil
			render :text=>"ok"
		else
			render :text=>"no"
		end
	end


	#渲染登录页面
	def login
		render
	end

	#登录，并调转到我的片库页面
	def goindex
		#
		session[:userName]=params["userName"]
		redirect_to :controller=>"play",:action=>"showAndPlay"
	end
end
