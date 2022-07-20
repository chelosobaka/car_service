class Admin::OrderServicesController < Admin::AdminController
  before_action :set_order_service, only: %i[ destroy edit update ]

  def new
    @order_service = OrderService.new(order_id: params[:order_id])
  end

  def create
    @order_service = OrderService.new(order_service_params)
    respond_to do |format|
      if @order_service.save
        format.html { redirect_to admin_order_path(@order_service.order_id), notice: "Order service was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @order_service.update(order_service_params)
        format.html { redirect_to admin_order_path(@order_service.order_id), notice: "Category was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order_service.destroy
    respond_to do |format|
      format.html { redirect_to admin_order_path(@order_service.order_id), notice: "Order service was successfully destroyed." }
    end
  end

  private
    def set_order_service
      @order_service = OrderService.find(params[:id])
    end

    def order_service_params
      params.require(:order_service).permit(:id, :order_id, :service_id, :employee_id)
  end
end
