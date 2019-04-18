require './config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitter_secret"

  end



  get '/' do
    erb :index3
  end



  ## PostsController
    post '/signin' do
        @user = User.create(:name => params[:username])
        @user.save
        session[:user_id] = @user.id
        redirect to '/homepage_all_posts'
      end

      get '/homepage_all_posts' do
          @user = User.find_by_id(session[:user_id])
          @post = Post.all
        erb :all_post4
      end

      post '/create_post' do
        @post = Post.create(:comment => params[:text])
        @post.save
        redirect to '/homepage_all_posts'
      end






      ## userCommentsController
      get '/convos/:id' do
        @user = User.find_by_id(session[:user_id])
        @post = Post.find_by_id(params[:id])
        @usercomments = @post.usercomments
        erb :all_convo
      end



      post '/create_convo' do
      "hello"

        end




end
