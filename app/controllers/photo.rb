get '/user/:u_id/album/:a_id' do
  @user = User.find(params[:u_id])
  @album = Album.find(params[:a_id])
  @uploads = Upload.all
  erb :album
end

post '/user/:u_id/album/:a_id' do
  @user = User.find(params[:u_id])
  @album = Album.find(params[:a_id])
  Upload.create(file: params[:image], album: @album)
  redirect "/user/#{params[:u_id]}/album/#{params[:a_id]}"
end