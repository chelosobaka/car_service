class Admin::OrdersController < Admin::AdminController
  before_action :set_order, only: %i[ show edit update destroy ]

  def index
    if params[:customer_name] || params[:created_at] || params[:employee] || params[:service]
      @orders = Order.where(nil)
      @orders = @orders.filter_by_customer_name(params[:customer_name]) if params[:customer_name].present?

      @orders = @orders.filter_by_created_at(params[:created_at]) if params[:created_at].present?

      #@orders = @orders.filter_by_service_employee(params[:employee_id]) if params[:employee_id].present?

      @orders = @orders.filter_by_service_category(params[:category_id]) if params[:category_id].present?
    else
      @orders = Order.all
    end
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to admin_order_path(@order), notice: "Order was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to admin_order_path(@order), notice: "Order was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to admin_orders_path, notice: "Order was successfully destroyed." }
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:customer_name, :category)
    end
end
