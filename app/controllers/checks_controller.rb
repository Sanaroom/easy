class ChecksController < ApplicationController
  def index
    @checks=Check.all
  end

  def new
    @check=Check.new
  end

  def create    
    @check=Check.new(check_params)
    if @check.save
      redirect_to root_path
    end
  end

  private

  def check_params
    params.require(:check).permit(:number_id,:attendance_id)
  end


end
