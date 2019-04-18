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
    post '/signin' do
        @user = User.create(:name => params[:username])
        @user.save
        redirect to '/homepage_all_posts'
      end

      get '/homepage_all_posts' do
          @post = Post.all
        erb :all_post4
      end

      post '/create_post' do
        @post = Post.create(:comment => params[:text])
        @post.save
        redirect to '/all_posts'
      end

      get '/all_posts' do
        @post = Post.all
        erb :all_post3
      end




      ## userCommentsController
      get '/convos' do
        @sis = User.find_by_id(1)

        @convo = Convo.find_by_id(1)
        @all_convos= @convo.usercomments

        erb :all_convo
      end

      get '/create_convo' do
        erb :create_convo
      end

      post '/create_convo' do
          @convo = Convo.find_by_id(1)
          @sis_comment = @convo.usercomments.create(:comment => params[:text])
          redirect to '/convos'
        end




end
