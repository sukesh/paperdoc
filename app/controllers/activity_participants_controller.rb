class ActivityParticipantsController < ApplicationController
  # GET /activity_participants
  # GET /activity_participants.xml
  def index
    @activity_participants = ActivityParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @activity_participants }
    end
  end

  # GET /activity_participants/1
  # GET /activity_participants/1.xml
  def show
    @activity_participant = ActivityParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @activity_participant }
    end
  end

  # GET /activity_participants/new
  # GET /activity_participants/new.xml
  def new
    @activity_participant = ActivityParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @activity_participant }
    end
  end

  # GET /activity_participants/1/edit
  def edit
    @activity_participant = ActivityParticipant.find(params[:id])
  end

  # POST /activity_participants
  # POST /activity_participants.xml
  def create
    @activity_participant = ActivityParticipant.new(params[:activity_participant])

    respond_to do |format|
      if @activity_participant.save
        format.html { redirect_to(@activity_participant, :notice => 'Activity participant was successfully created.') }
        format.xml  { render :xml => @activity_participant, :status => :created, :location => @activity_participant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @activity_participant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /activity_participants/1
  # PUT /activity_participants/1.xml
  def update
    @activity_participant = ActivityParticipant.find(params[:id])

    respond_to do |format|
      if @activity_participant.update_attributes(params[:activity_participant])
        format.html { redirect_to(@activity_participant, :notice => 'Activity participant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @activity_participant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_participants/1
  # DELETE /activity_participants/1.xml
  def destroy
    @activity_participant = ActivityParticipant.find(params[:id])
    @activity_participant.destroy

    respond_to do |format|
      format.html { redirect_to(activity_participants_url) }
      format.xml  { head :ok }
    end
  end
end
