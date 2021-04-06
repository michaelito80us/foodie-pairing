class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_user, only: :show

  def index

  end

  def create
    # if the fooide send the request feedback and confirmed by slot owner, a booking is created.
    @booking = Booking.new(booking_params)
     if @booking.save

      render successfull message here
    else render error
    end


  end


  def show
    @booking = Booking.find(params[:id])
    # id: 1, user_id: 1, status: true, slot_id: 4
    @onwer = @booking.slot.user
    @foodie = @booking.user



  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :slot_id, :status = 'false')
  end

end
