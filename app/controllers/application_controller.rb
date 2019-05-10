require './config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitter_secret"

  end



  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

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
        @convo = @post.convo
        @usercomments = Usercomment.all
        erb :all_convo
      end


      post '/convos/:id/create' do

        @user = User.find_by_id(session[:user_id])
                @post = Post.find_by_id(params[:id])
                if @post.convo.empty?
                      @convo = @post.convo.create(convos:1)
                      @user_comment = Usercomment.create(:comment => params[:text]) #need to fix
                      @user_comment.user_id = @user.id
                      @user_comment.post_id = @post.id
                      @user_comment.save
                       else
                         @convo = @post.convo
                         @user_comment = Usercomment.create(:comment => params[:text]) # need to fix
                         @user_comment.user_id = @user.id
                         @user_comment.post_id = @post.id
                         @user_comment.save
                       end
                       redirect to '/convos/:id'
                     end






end
