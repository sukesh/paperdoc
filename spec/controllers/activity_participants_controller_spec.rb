require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ActivityParticipantsController do

  # This should return the minimal set of attributes required to create a valid
  # ActivityParticipant. As you add validations to ActivityParticipant, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all activity_participants as @activity_participants" do
      activity_participant = ActivityParticipant.create! valid_attributes
      get :index
      assigns(:activity_participants).should eq([activity_participant])
    end
  end

  describe "GET show" do
    it "assigns the requested activity_participant as @activity_participant" do
      activity_participant = ActivityParticipant.create! valid_attributes
      get :show, :id => activity_participant.id.to_s
      assigns(:activity_participant).should eq(activity_participant)
    end
  end

  describe "GET new" do
    it "assigns a new activity_participant as @activity_participant" do
      get :new
      assigns(:activity_participant).should be_a_new(ActivityParticipant)
    end
  end

  describe "GET edit" do
    it "assigns the requested activity_participant as @activity_participant" do
      activity_participant = ActivityParticipant.create! valid_attributes
      get :edit, :id => activity_participant.id.to_s
      assigns(:activity_participant).should eq(activity_participant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ActivityParticipant" do
        expect {
          post :create, :activity_participant => valid_attributes
        }.to change(ActivityParticipant, :count).by(1)
      end

      it "assigns a newly created activity_participant as @activity_participant" do
        post :create, :activity_participant => valid_attributes
        assigns(:activity_participant).should be_a(ActivityParticipant)
        assigns(:activity_participant).should be_persisted
      end

      it "redirects to the created activity_participant" do
        post :create, :activity_participant => valid_attributes
        response.should redirect_to(ActivityParticipant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved activity_participant as @activity_participant" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityParticipant.any_instance.stub(:save).and_return(false)
        post :create, :activity_participant => {}
        assigns(:activity_participant).should be_a_new(ActivityParticipant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityParticipant.any_instance.stub(:save).and_return(false)
        post :create, :activity_participant => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested activity_participant" do
        activity_participant = ActivityParticipant.create! valid_attributes
        # Assuming there are no other activity_participants in the database, this
        # specifies that the ActivityParticipant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ActivityParticipant.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => activity_participant.id, :activity_participant => {'these' => 'params'}
      end

      it "assigns the requested activity_participant as @activity_participant" do
        activity_participant = ActivityParticipant.create! valid_attributes
        put :update, :id => activity_participant.id, :activity_participant => valid_attributes
        assigns(:activity_participant).should eq(activity_participant)
      end

      it "redirects to the activity_participant" do
        activity_participant = ActivityParticipant.create! valid_attributes
        put :update, :id => activity_participant.id, :activity_participant => valid_attributes
        response.should redirect_to(activity_participant)
      end
    end

    describe "with invalid params" do
      it "assigns the activity_participant as @activity_participant" do
        activity_participant = ActivityParticipant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityParticipant.any_instance.stub(:save).and_return(false)
        put :update, :id => activity_participant.id.to_s, :activity_participant => {}
        assigns(:activity_participant).should eq(activity_participant)
      end

      it "re-renders the 'edit' template" do
        activity_participant = ActivityParticipant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActivityParticipant.any_instance.stub(:save).and_return(false)
        put :update, :id => activity_participant.id.to_s, :activity_participant => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested activity_participant" do
      activity_participant = ActivityParticipant.create! valid_attributes
      expect {
        delete :destroy, :id => activity_participant.id.to_s
      }.to change(ActivityParticipant, :count).by(-1)
    end

    it "redirects to the activity_participants list" do
      activity_participant = ActivityParticipant.create! valid_attributes
      delete :destroy, :id => activity_participant.id.to_s
      response.should redirect_to(activity_participants_url)
    end
  end

end