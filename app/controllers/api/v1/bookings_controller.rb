class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_user, only: %i[show create]
  before_action :set_slot, only: %i[show create]

  def index
    # @booking = Booking.joins(:slots).where({ bookings: { status: 'confirmed' } })
    @bookings = Booking.where(user_id: user)
  end

  def create
    # if the fooide send the request feedback  is created.
    @booking = Booking.new(booking_params)
    @booking.status = 'new'
    # @booking.user = @user
    # @booking.slot = @slot
     if @booking.save
        render json: { msg: "Created" }
    else
      render_error(@bookings)
    end
  end


  def show
    # @booking = Booking.joins(:slots).where({ bookings: { status: 'confirmed' } }).joins(:users).where( booking: {user_id: user })
    # @booking = Booking.find(params[:id])
    # # @restaurant_names = @booking.slot.restaurant_name
    # @slot_dates = @booking.slot.date
    # @slot_times = @booking.slot.time
    # @slot_owner = @booking.slot.user
    # @foodie = @booking.user
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :slot_id)
    # pending = 0
    # replied = 1
    # confirmed = 2
  end

  def set_slot
    @slot = Slot.find(parmas[:slot_id])
  end

  def set_user
    @user = User.find(parmas[:user_id])
  end
end
