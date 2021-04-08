class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: %i[show update]


  def show

    @slots = Slot.where(user_id: @user.id)
    @slots.each do |slot|
      close_slot(slot)
      puts slot
    end

    @pendingbookings = Booking.where("user_id = ? and status = ?", @user.id, "new")
    
    @bookings = Booking.where("user_id = ? and status = ?", @user.id, "accepted")
  end

  def update
    # put 'api/v1/users/:id'
    if @user.update(user_params)
      render json: { msg: "Updated" }
    else
      render_error(@users)
    end
  end

  private

  def close_slot(slot)
    slot.update(open: false) if slot.date < Date.today
  end

  def user_params
    params.require(:user).permit(:name, :age, :gender, :profession, :favorie_cuisine, :self_introduction, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
