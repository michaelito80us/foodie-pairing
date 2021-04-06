class Api::V1::SlotssController < Api::V1::BaseController
  before_action :set_slot, only: %i[show update destroy ]

  def index
    @slots = Slot.all
    # render json: @stories #Just for testing
  end

  def show
  end

  def create
    @slot = Slot.new(slot_params)
    if @slot.save
      render json: { msg: "Created" }
    else
      render_error(@slot)
    end
  end

  def destroy
    if @slot.destroy
      render json: { msg: "Deleted" }
    else
      render_error(@slot)
    end
  end

  private

  def set_slot
    @slot = Slot.find(params[:id])
  end

  def slot_params
    params.require(:slot).permit(:user_id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :lat, :lon)
  end
end
