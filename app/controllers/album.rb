enable :sessions
set :protection, except: :session_hijacking

post '/user/:u_id/new_album' do
  @user = User.find(params[:u_id])
  Album.create(name: params[:name], description: params[:description], user: @user)
  redirect "/user/#{params[:u_id]}"
end

# album : {name: dfslkj, description: sdf}
# album[:user] = test

# album : {name: dfslkj, description: sdf, user: test}

