class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new(invite_params)
    if @invite.save
      redirect_to thank_you_path, notice: 'Thank you for your RSVP!'
    else
      render :new, alert: 'Something went wrong.'
    end
  end

  private

  def invite_params
    params.require(:invite).permit(:name, :email, :rsvp, :message)
  end
end
