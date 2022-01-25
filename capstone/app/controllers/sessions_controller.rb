class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @trainer = Trainer.find_by(email: params[:email])
    if @trainer && @trainer.password == params[:password]
      session[:user_id] = @trainer.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login
  end

end
