enable :sessions
set :protection, except: :session_hijacking

post '/signup' do
  @user = User.create(params[:user])
  @album = Album.create(name: "New_Album" , description: "No description", user: @user)
  @message = "Sign in here"
  erb :signin
end

post '/signin' do
  @user = User.authenticate(params[:user]["email"], params[:user]["password"])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "User not authenticated"
    erb :signin
  end
end

get '/signin' do
  erb :signin
end

get '/user/:u_id' do
  @user = User.find(params[:u_id])
  @albums = Album.all
  erb :profile
end

get '/logout' do
  session[:user_id] = nil
  redirect  '/'
end