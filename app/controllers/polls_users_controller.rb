class PollsUsersController < ApplicationController
  before_action :set_polls_user, only: [:show, :edit, :update, :destroy]

  # GET /polls_users
  # GET /polls_users.json
  def index
    @polls_users = PollsUser.all
  end

  # GET /polls_users/1
  # GET /polls_users/1.json
  def show
  end

  # GET /polls_users/new
  def new
    @polls_user = PollsUser.new
  end

  # GET /polls_users/1/edit
  def edit
  end

  # POST /polls_users
  # POST /polls_users.json
  def create
    @polls_user = PollsUser.new(polls_user_params)

    respond_to do |format|
      if @polls_user.save
        format.html { redirect_to @polls_user, notice: 'Polls user was successfully created.' }
        format.json { render :show, status: :created, location: @polls_user }
      else
        format.html { render :new }
        format.json { render json: @polls_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polls_users/1
  # PATCH/PUT /polls_users/1.json
  def update
    respond_to do |format|
      if @polls_user.update(polls_user_params)
        format.html { redirect_to @polls_user, notice: 'Polls user was successfully updated.' }
        format.json { render :show, status: :ok, location: @polls_user }
      else
        format.html { render :edit }
        format.json { render json: @polls_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polls_users/1
  # DELETE /polls_users/1.json
  def destroy
    @polls_user.destroy
    respond_to do |format|
      format.html { redirect_to polls_users_url, notice: 'Polls user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polls_user
      @polls_user = PollsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polls_user_params
      params.require(:polls_user).permit(:poll_id, :user_id, :yea, :nay)
    end
end
