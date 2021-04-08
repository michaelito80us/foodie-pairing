class Api::V1::BookingsController < Api::V1::BaseController
  # before_action :set_user, only: %i[show create]
  # before_action :set_slot, only: %i[show create]

  # def index
  #   # @booking = Booking.joins(:slots).where({ bookings: { status: 'confirmed' } })
  #   @bookings = Booking.where(user_id: user)
  # end

  def create
    # if the fooide send the request feedback  is created.
    @booking = Booking.new(booking_params)
    @booking.status = 'new'
    if @booking.save
      render json: { msg: "Created" }
    else
      render_error(@bookings)
    end
  end

  # def show
  # end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :slot_id)
  end

  def set_slot
    @slot = Slot.find(params[:slot_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
