def login?
  if session[:user_id].nil?
    false
  else
    true
  end
end

def username
  session[:user_id]
end