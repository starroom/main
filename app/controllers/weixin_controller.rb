class WeixinController < ApplicationController
  def validate
  	p params
  	render :text => 'hello'
  end
end
