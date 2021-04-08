class Api::V1::BookingsController < Api::V1::BaseController
  # before_action :set_user, only: %i[create]
  # before_action :set_slot, only: %i[update]
  before_action :set_booking, only: %i[show update]

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

  def show
    # @bookings = Booking.where(user_id: @user.id)
  end

  def update
    if @booking.update(booking_params)
      @booking.slot.update(open: false) if @booking.status == "accepted"
      #   @slot = @booking.slot
      #   @slot.update(open: false)
      # end
      render json: { msg: "Updated" }
    else
      render_error(@bookings)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :slot_id, :status)
  end

  def set_slot
    @slot = Slot.find(params[:slot_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
