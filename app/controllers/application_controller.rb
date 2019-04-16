require './config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end



  get '/' do
    erb :index3
  end



  ## PostsController
    post '/signup' do
        @user = User.create(:name => params[:username])
        @user.save
        redirect to '/homepage_posts'
      end

      get '/homepage_posts' do
        @user = User.find_by_id(1)
        erb :post
      end

      post '/create_post' do
        @post = Post.create(:comment => params[:text])
        @post.save
        redirect to '/all_posts'
      end

      get '/all_posts' do
        @post = Post.all
        erb :all_posts
      end




      ## PostsController




end
