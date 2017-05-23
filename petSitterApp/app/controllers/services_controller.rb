class ServicesController < ApplicationController
  def index
    @all_services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    #@user = @service.user
  end

  def create
    @service = Service.new(service_params)
    @service.save
       redirect_to @service, notice: 'Service was successfully created.'
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find_by(id: params["id"])
  end

  def destroy
      @service = Service.find(params[:id])
      @service.destroy
      redirect_to services_path
  end

  private
  def service_params
    params.require(:service).permit(:name, :description, :price)
  end

end
