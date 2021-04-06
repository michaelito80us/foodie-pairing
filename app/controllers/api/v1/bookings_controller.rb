class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_user, only: :show

  def index
    @owner = @booking.slot.user
    @foodie = @booking.user
    @bookings_owner = Booking.find(@owner.id)
  end

  def create
    # if the fooide send the request feedback  is created.
    @booking = Booking.new(booking_params)
     if @booking.save
        render json: { msg: "Created" }
    else
      render_error(@bookings)
    end
  end


  def show
    @booking = Booking.find(params[:id])
    # id: 1, user_id: 1, status: true, slot_id: 4
    @owner = @booking.slot.user
    @foodie = @booking.user



  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :slot_id, :status = 0)
    # pending = 0
    # replied = 1
    # confirmed = 2
  end

end
