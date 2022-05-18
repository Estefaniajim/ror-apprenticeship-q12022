class TrainersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def index
    @trainers = Trainer.all.order(:id)
  end

  def create
    @trainer = Trainer.create(params.require(:email).permit(:email, :password))
    session[:user_id] = @trainer.id
    redirect_to '/welcome'
  end

  def show
  end

  def new
    @trainer = Trainer.new
  end

  def edit
  end
end
