
class PostsController < ApplicationController

  post '/signup' do
      @user = User.create(:name => params[:username])
      @user.save
      redirect to '/posts'
    end

    get '/posts' do
      @user = User.find_by_id(1)
      "hello #{@user.name}"
    end
    
  end
