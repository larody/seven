class DonesController < ApplicationController
  before_filter :authenticate_user!

  # GET /challenges/1/edit
  def edit
  #  @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @done = Done.new(params[:done])
    @done.user_id = current_user.id

    respond_to do |format|
      if @done.save
        format.html { redirect_to challenges_path, notice: 'Good job! You are deligent! :D' }
      else
        format.html { redirect_to challenges_path, notice: 'Oops! Something went wrong. :(' }
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
