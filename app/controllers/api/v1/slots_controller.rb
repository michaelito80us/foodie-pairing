class Api::V1::SlotsController < Api::V1::BaseController
  before_action :set_slot, only: %i[show destroy]
  before_action :set_user, only: %i[index]

  def index
    @slots = Slot.where("open = ? and DATE(date) > ? and user_id != ?", true, Date.today, @user.id)
    @slots.order!({ date: :asc })
    

    @slotstofalse = Slot.where("DATE(date) < ? and open = ?", Date.today, true)
    @slotstofalse.each do |slot|
      slot.update(open: false)
    end
  end

  def show
  end

  def create
    @slot = Slot.new(slot_params)
    # @slot.user = @user
    if @slot.save
      render json: { msg: "Created" }
    else
      render_error(@slot)
    end
  end

  def update
    @slot.update(slot_params)
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
    params.require(:slot).permit(:user_id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :open, :message)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
