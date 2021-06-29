class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.find(current_user.id)
    @user_reservations = Reservation.where(user_id:current_user).where("day >= ?", Date.current).order(day: :desc)
    @visit_historys = Reservation.where(user_id:current_user).where("day < ?", Date.current).where("day > ?", Date.today << 12).order(day: :desc)

    #実力不足で筆者の下の記載を理解できずエラーを解除できなかったので、自分が理解できる上のコードとした(関連性が設定できていない可能性がある)
    # @user_reservations = current_user.reservations.where("day >= ?", Date.current).order(day: :desc)
    # @visit_historys = current_user.reservations.where("day < ?", Date.current).where("day > ?", Date.today << 12).order(day: :desc)
  end
end
