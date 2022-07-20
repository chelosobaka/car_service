class Admin::ServicesController < Admin::AdminController
  before_action :set_service, only: %i[ show edit update destroy ]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def edit
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to admin_service_path(@service), notice: "Service was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to admin_service_path(@service), notice: "Service was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to admin_services_path, notice: "Service was successfully destroyed." }
    end
  end

  private
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:name, :price, :category_id)
    end
end
