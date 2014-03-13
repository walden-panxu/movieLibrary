class CreateUsers < ActiveRecord::Migration
  def change
    #创建用户信息表
    create_table :users do |t|
    	t.string :userName,:limit=>50,:null=>false
    	t.string :password,:limit=>30,:null=>false
    	t.integer :gender,:null=>true
    	t.date :birthdate,:null=>true
    	t.string :address,:limit=>100,:null=>true
    	t.string :email,:limit=>50,:null=>false
    	t.string :phoneNumber,:limit=>12,:null=>true
    	t.timestamps
    end

    #创建影片信息表
    create_table :movies do |t|
    	t.string :movieName,:limit=>50,:null=>false
    	t.date :shootingTime
    	t.datetime :screenTime
    	t.integer :duration,:null=>false
    	t.string :movieHonour,:limit=>40
    	t.string :movieClass,:null=>false
    	t.string :movieNationality
    	t.string :movieBill,:null=>false
    	t.integer :movieScore,:default=>0
    end

    #创建片库信息表
    create_table :movieLibrarys do |t|
    	t.string :libraryName,:limit=>100,:default=>"我的片库"
    	t.belongs_to :user
    	t.timestamps
    end

    #创建片库影片收藏信息表
    create_table :movieCollects do |t|
    	t.belongs_to :movieLibrary
    	t.belongs_to :movie
        t.timestamps
    end

    #创建影评信息表
    create_table :movieComments do |t|
    	t.text :comment,:null=>true
    	t.belongs_to :user
    	t.belongs_to :movie
    	t.integer :praiseScode
    	t.integer :commentClass
    	t.integer :public
    	t.timestamps
    end

    #创建影片演员关联信息表
    create_table :actors_movies,:id=>false do |t|
        t.belongs_to :movie
        t.belongs_to :actor   
    end

    #创建影片导演关联信息表
    create_table :directors_movies:id=>false do |t|
        t.belongs_to :movie
        t.belongs_to :director   
    end

    #创建演员信息表
    create_table :actors do |t|
    	t.string :actorsName,:limit=>50
    	t.date :birthdate
    	t.string :actorsHonour
    	t.text :actorsComment
    end

    #创建导演信息表
    create_table :directors do |t|
    	t.string :directorName,:null=>false
        t.date :birthdate
    	t.string :directorHonour
    	t.text :directorComment
    end
    
  end
end
