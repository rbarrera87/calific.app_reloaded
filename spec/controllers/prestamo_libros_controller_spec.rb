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

describe PrestamoLibrosController do

  # This should return the minimal set of attributes required to create a valid
  # PrestamoLibro. As you add validations to PrestamoLibro, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrestamoLibrosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all prestamo_libros as @prestamo_libros" do
      prestamo_libro = PrestamoLibro.create! valid_attributes
      get :index, {}, valid_session
      assigns(:prestamo_libros).should eq([prestamo_libro])
    end
  end

  describe "GET show" do
    it "assigns the requested prestamo_libro as @prestamo_libro" do
      prestamo_libro = PrestamoLibro.create! valid_attributes
      get :show, {:id => prestamo_libro.to_param}, valid_session
      assigns(:prestamo_libro).should eq(prestamo_libro)
    end
  end

  describe "GET new" do
    it "assigns a new prestamo_libro as @prestamo_libro" do
      get :new, {}, valid_session
      assigns(:prestamo_libro).should be_a_new(PrestamoLibro)
    end
  end

  describe "GET edit" do
    it "assigns the requested prestamo_libro as @prestamo_libro" do
      prestamo_libro = PrestamoLibro.create! valid_attributes
      get :edit, {:id => prestamo_libro.to_param}, valid_session
      assigns(:prestamo_libro).should eq(prestamo_libro)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PrestamoLibro" do
        expect {
          post :create, {:prestamo_libro => valid_attributes}, valid_session
        }.to change(PrestamoLibro, :count).by(1)
      end

      it "assigns a newly created prestamo_libro as @prestamo_libro" do
        post :create, {:prestamo_libro => valid_attributes}, valid_session
        assigns(:prestamo_libro).should be_a(PrestamoLibro)
        assigns(:prestamo_libro).should be_persisted
      end

      it "redirects to the created prestamo_libro" do
        post :create, {:prestamo_libro => valid_attributes}, valid_session
        response.should redirect_to(PrestamoLibro.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved prestamo_libro as @prestamo_libro" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrestamoLibro.any_instance.stub(:save).and_return(false)
        post :create, {:prestamo_libro => {  }}, valid_session
        assigns(:prestamo_libro).should be_a_new(PrestamoLibro)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrestamoLibro.any_instance.stub(:save).and_return(false)
        post :create, {:prestamo_libro => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested prestamo_libro" do
        prestamo_libro = PrestamoLibro.create! valid_attributes
        # Assuming there are no other prestamo_libros in the database, this
        # specifies that the PrestamoLibro created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PrestamoLibro.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => prestamo_libro.to_param, :prestamo_libro => { "these" => "params" }}, valid_session
      end

      it "assigns the requested prestamo_libro as @prestamo_libro" do
        prestamo_libro = PrestamoLibro.create! valid_attributes
        put :update, {:id => prestamo_libro.to_param, :prestamo_libro => valid_attributes}, valid_session
        assigns(:prestamo_libro).should eq(prestamo_libro)
      end

      it "redirects to the prestamo_libro" do
        prestamo_libro = PrestamoLibro.create! valid_attributes
        put :update, {:id => prestamo_libro.to_param, :prestamo_libro => valid_attributes}, valid_session
        response.should redirect_to(prestamo_libro)
      end
    end

    describe "with invalid params" do
      it "assigns the prestamo_libro as @prestamo_libro" do
        prestamo_libro = PrestamoLibro.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PrestamoLibro.any_instance.stub(:save).and_return(false)
        put :update, {:id => prestamo_libro.to_param, :prestamo_libro => {  }}, valid_session
        assigns(:prestamo_libro).should eq(prestamo_libro)
      end

      it "re-renders the 'edit' template" do
        prestamo_libro = PrestamoLibro.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PrestamoLibro.any_instance.stub(:save).and_return(false)
        put :update, {:id => prestamo_libro.to_param, :prestamo_libro => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested prestamo_libro" do
      prestamo_libro = PrestamoLibro.create! valid_attributes
      expect {
        delete :destroy, {:id => prestamo_libro.to_param}, valid_session
      }.to change(PrestamoLibro, :count).by(-1)
    end

    it "redirects to the prestamo_libros list" do
      prestamo_libro = PrestamoLibro.create! valid_attributes
      delete :destroy, {:id => prestamo_libro.to_param}, valid_session
      response.should redirect_to(prestamo_libros_url)
    end
  end

end
