class ServicesController < ApplicationController
  def index
    @all_services = Service.all
  end

  def show
    @service = Service.find(params[:id])
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
  end

  def destroy
      @service.destroy
      respond_to do |format|
        redirect_to services_url, notice: 'Service was successfully destroyed.'
      end
    end

  private
  def service_params
    params.require(:service).permit(:name, :description, :price)
  end

end
