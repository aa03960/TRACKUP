class ContactsController < ApplicationController


  before_action :contact_params, only: [:create]

  def index
    @contact = Contact.new(params[:contact_form])
    #@contact = Contact.new
    if request.post?
      ContactMailer.with(user: @contact).contact_email.deliver_now
      flash.now[:notice] = 'Thank you for your message!'
      render :index
    else
      flash.now[:error] = "Message did not send"
      render :index
    end
  end

  def create
    
    @contact = Contact.new(params[:contact_form])

    #@contact.request = request
    #if request.post?
    #ContactMailer.with(user: @user).welcome_email.deliver_now
    #flash.now[:notice] = 'Thank you for your message!'
    #render :index
    #else
    #flash.now[:error] = 'Cannot send message.'
    #render :index
    #end
  end



  private

  def contact_params
    params.require(:contact_form).permit(:name, :email, :message, :nickname, :captcha)
  end
end







=begin
    @track = Track.new(track_params)
    @user = Useer.find(params[:user_id])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render :show, status: :created, location: @track }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end
=end  