class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all.order(:id)
  end

  def show
  end

  def new
  end

  def edit
  end
end
