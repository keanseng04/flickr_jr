enable :sessions
set :protection, except: :session_hijacking

get '/' do
  if login?
    @user = User.find session[:user_id]
  end
  @uploads = Upload.all
  erb :index
end

post '/' do
  upload = Upload.new
  upload.file = params[:image]
  upload.save
  redirect to('/')
end

