class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Services.find(params[:name])
  end
end
