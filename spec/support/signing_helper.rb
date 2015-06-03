module SignHelper
  def sign_in(user)
    post admun_user_session_path, :email => user.login, :password => user.password
  end
end