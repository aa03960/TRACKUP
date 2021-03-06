class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy, :show_favourite]
  before_action :authenticate_useer!, except: [:index, :show]
 # before_action :correct_user, only: [:edit, :update, :destroy]


  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
  end

  def show_favourite
    if @track.favourite == true
      render text: 'ADDED TO FAVOURITES'
  end
  helper_method :show_favourite
end


  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(track_params)

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

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was successfully removed.' }
      format.json { head :no_content }
    end
  end

  #def correct_user
    #@track = current_useer.tracks.find_by(id: params[:id])
# # redirect_to track_path, notice: 'Unauthorised Access' if @track.nil?
 # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_params
      params.require(:track).permit(:title, :artist, :album, :date, :notes, :favourite, :user_id, :useers)
    end
end
