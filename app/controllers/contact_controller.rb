class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params

    if @contact.valid?
      ContactMailer.contact(@contact).deliver_now
      redirect_to new_message_url
      flash[:notice] = "We have received tour message and will be in touch soon!"
    else
      flash[:notice] = "There as an error sending your message. Please try again."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone_number, :body)
  end
end
