class UsersController < ApplicationController

  before_filter :check_token, except: :index

  def index
    render :text => 'index!7777'
  end

  def mobile_new
    user = User.create user_params
    if user.errors.empty?
      render :json => {:status => '0', :message => {:uid => user.id}}
    else
      render :json => {:status => '1', :message => user.errors.to_json}
    end
  end

  def mobile_login
    user = User.find_by(mobile: params[:mobile])
    if user
      render :json => {:status => '0', :message => {:uid => user.id}}
    else
      render :json => {:status => '1', :message => {:password => 'invalidate.'}}
    end
  end

  private

  def user_params
    params.permit(:mobile, :password)
  end

  def check_token
  	# MD5.hexdigest 手机号+密码+特定密码+随机字符串
    sign = Digest::MD5.hexdigest params[:mobile] + params[:password] + Settings['special_key'] + params[:formhash]
    if sign != params[:token]
      render :json => {:status => '1', :message => {:token => 'token invalidate.'}}
    end
  end

end