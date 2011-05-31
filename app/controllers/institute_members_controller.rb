class InstituteMembersController < ApplicationController
  # GET /institute_members
  # GET /institute_members.xml
  def index
    @institute_members = InstituteMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @institute_members }
    end
  end

  # GET /institute_members/1
  # GET /institute_members/1.xml
  def show
    @institute_member = InstituteMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @institute_member }
    end
  end

  # GET /institute_members/new
  # GET /institute_members/new.xml
  def new
    @institute_member = InstituteMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @institute_member }
    end
  end

  # GET /institute_members/1/edit
  def edit
    @institute_member = InstituteMember.find(params[:id])
  end

  # POST /institute_members
  # POST /institute_members.xml
  def create
    @institute_member = InstituteMember.new(params[:institute_member])

    respond_to do |format|
      if @institute_member.save
        format.html { redirect_to(@institute_member, :notice => 'Institute member was successfully created.') }
        format.xml  { render :xml => @institute_member, :status => :created, :location => @institute_member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @institute_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /institute_members/1
  # PUT /institute_members/1.xml
  def update
    @institute_member = InstituteMember.find(params[:id])

    respond_to do |format|
      if @institute_member.update_attributes(params[:institute_member])
        format.html { redirect_to(@institute_member, :notice => 'Institute member was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @institute_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /institute_members/1
  # DELETE /institute_members/1.xml
  def destroy
    @institute_member = InstituteMember.find(params[:id])
    @institute_member.destroy

    respond_to do |format|
      format.html { redirect_to(institute_members_url) }
      format.xml  { head :ok }
    end
  end
end
