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

describe TutoriasController do

  # This should return the minimal set of attributes required to create a valid
  # Tutorias. As you add validations to Tutorias, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "mes1" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TutoriasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tutorias as @tutorias" do
      tutorias = Tutorias.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tutorias).should eq([tutorias])
    end
  end

  describe "GET show" do
    it "assigns the requested tutorias as @tutorias" do
      tutorias = Tutorias.create! valid_attributes
      get :show, {:id => tutorias.to_param}, valid_session
      assigns(:tutorias).should eq(tutorias)
    end
  end

  describe "GET new" do
    it "assigns a new tutorias as @tutorias" do
      get :new, {}, valid_session
      assigns(:tutorias).should be_a_new(Tutorias)
    end
  end

  describe "GET edit" do
    it "assigns the requested tutorias as @tutorias" do
      tutorias = Tutorias.create! valid_attributes
      get :edit, {:id => tutorias.to_param}, valid_session
      assigns(:tutorias).should eq(tutorias)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tutorias" do
        expect {
          post :create, {:tutorias => valid_attributes}, valid_session
        }.to change(Tutorias, :count).by(1)
      end

      it "assigns a newly created tutorias as @tutorias" do
        post :create, {:tutorias => valid_attributes}, valid_session
        assigns(:tutorias).should be_a(Tutorias)
        assigns(:tutorias).should be_persisted
      end

      it "redirects to the created tutorias" do
        post :create, {:tutorias => valid_attributes}, valid_session
        response.should redirect_to(Tutorias.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tutorias as @tutorias" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tutorias.any_instance.stub(:save).and_return(false)
        post :create, {:tutorias => { "mes1" => "invalid value" }}, valid_session
        assigns(:tutorias).should be_a_new(Tutorias)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tutorias.any_instance.stub(:save).and_return(false)
        post :create, {:tutorias => { "mes1" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tutorias" do
        tutorias = Tutorias.create! valid_attributes
        # Assuming there are no other tutorias in the database, this
        # specifies that the Tutorias created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tutorias.any_instance.should_receive(:update).with({ "mes1" => "1" })
        put :update, {:id => tutorias.to_param, :tutorias => { "mes1" => "1" }}, valid_session
      end

      it "assigns the requested tutorias as @tutorias" do
        tutorias = Tutorias.create! valid_attributes
        put :update, {:id => tutorias.to_param, :tutorias => valid_attributes}, valid_session
        assigns(:tutorias).should eq(tutorias)
      end

      it "redirects to the tutorias" do
        tutorias = Tutorias.create! valid_attributes
        put :update, {:id => tutorias.to_param, :tutorias => valid_attributes}, valid_session
        response.should redirect_to(tutorias)
      end
    end

    describe "with invalid params" do
      it "assigns the tutorias as @tutorias" do
        tutorias = Tutorias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tutorias.any_instance.stub(:save).and_return(false)
        put :update, {:id => tutorias.to_param, :tutorias => { "mes1" => "invalid value" }}, valid_session
        assigns(:tutorias).should eq(tutorias)
      end

      it "re-renders the 'edit' template" do
        tutorias = Tutorias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tutorias.any_instance.stub(:save).and_return(false)
        put :update, {:id => tutorias.to_param, :tutorias => { "mes1" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tutorias" do
      tutorias = Tutorias.create! valid_attributes
      expect {
        delete :destroy, {:id => tutorias.to_param}, valid_session
      }.to change(Tutorias, :count).by(-1)
    end

    it "redirects to the tutorias list" do
      tutorias = Tutorias.create! valid_attributes
      delete :destroy, {:id => tutorias.to_param}, valid_session
      response.should redirect_to(tutorias_index_url)
    end
  end

end
