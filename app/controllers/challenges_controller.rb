class ChallengesController < ApplicationController
  before_filter :authenticate_user!

  # GET /challenges
  # GET /challenges.json
  def index
    @challenges = current_user.challenges.where(status: 1)
    @done = Done.new
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    @challenge = Challenge.find(params[:id])
  end

  # GET /challenges/new
  # GET /challenges/new.json
  def new
    @challenge = Challenge.new
  end

  # GET /challenges/1/edit
  def edit
    @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @challenge = Challenge.new(params[:challenge])

    respond_to do |format|
      if current_user.challenges << @challenge and @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /challenges/1
  # PUT /challenges/1.json
  def update
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :no_content }
    end
  end
end
