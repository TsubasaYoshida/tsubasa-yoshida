class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_url, notice: '問い合わせの送信に成功しました。'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:company, :name, :email, :telephone, :message)
  end

end
