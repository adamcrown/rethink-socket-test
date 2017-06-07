class MembershipsController < ApplicationController
  def create
    membership = Membership.create(membership_params.merge(user_id: params[:user_id]))

    redirect_to user_path(membership.user)
  end

  def destroy
    membership = Membership.find(params[:id])
    membership.destroy

    redirect_to user_path(membership.user)
  end

  private

  def membership_params
    params.require(:membership).permit :channel_id
  end
end
