class ChecksController < ApplicationController
  def index
    @checks=Check.all
  end

  def new
    @check=Check.new
  end

  def create
    @check=Check.new(check_params)
    
  end

  private
  def check_params
    params.require(:check).permit(:number,:attendance)
  end


end
