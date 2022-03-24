class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:warning] = 'ログインしました。'
      log_in(user)
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      #remember(user)
      redirect_back_or(user)
      # ログイン後にユーザー情報ページにリダイレクトします。
    else
      # ここにはエラーメッセージ用のflashを入れます。
      flash.now[:danger] = '認証に失敗しました。'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    flash[:warning] = 'ログアウトしました。'
    redirect_to root_url
  end

end
