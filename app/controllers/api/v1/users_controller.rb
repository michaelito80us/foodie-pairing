class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: %i[show update]


  def show
    #user profile w photo
    #slots as owner
    @slots = Slot.where(user_id: @user.id)
      # if @slots.empty ?
    #booking as foodie
    @bookings = Booking.where(user_id: @user.id)
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

  def user_params
    params.require(:user).permit(:name, :age, :gender, :profession, :favorie_cuisine, :self_introduction, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
