class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy]
  before_action :set_event
  before_action :require_signin
  before_action :require_equal_user, only: [:edit, :update, :destroy]
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = @event.registrations
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
  end

  # GET /registrations/new
  def new
    @registration = @event.registrations.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
    
    @registration = @event.registrations.new(registration_params)
    @registration.user_id = current_user.id
    respond_to do |format|
      if @registration.save
        format.html { redirect_to event_registrations_path(@event.id, @registration.id), notice: 'Registration was successfully created.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    respond_to do |format|
      if @registration.update(registration_params)
        format.html { redirect_to event_registrations_path(@event.id, @registration.id), notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration.destroy
    respond_to do |format|
      format.html { redirect_to event_registrations_url(@event.id), notice: 'Registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end
   
    def require_equal_user
      if @registration.user != current_user
        redirect_to root_path, alert: "Das darf nur der, dem die Registrierung gehört!"
      end
    end

    def set_event
      @event = Event.find(params[:event_id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:how_heard, :user_id, :event_id)
    end
end
