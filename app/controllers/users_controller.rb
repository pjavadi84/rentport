class UsersController < ApplicationController
  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    erb :'users/show'
  end

  # GET: /users
  get "/signup" do
    if !logged_in?
      erb :'users/new.html', locals: {message: "Please sign up before you sign in"}
    else
      redirect to '/properties.html'
    end
  end


  # POST: /users
  post "/signup" do
    if params[:company_name].empty? || params[:email].empty? || params[:username].empty? || params[:password].empty?
      redirect to '/signup'
    else
      @user = User.new(:company_name => params[:company_name], :email => params[:email], :username => params[:username], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/properties'
    end
  end

  #GET: /login
  get '/login' do
    if !logged_in?
      erb :'users/login.html'
    else
      redirect to '/properties'
    end
  end

  #PST: /login
  post '/login' do
    user = User.find_by(:username => params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/properties'
    else
      redirect to '/signup'
    end
  end
  

  get "/logout" do
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/welcome'
    end
  end
end
