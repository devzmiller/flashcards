require 'rails_helper'

describe UsersController, type: :controller do
  describe "#new" do
    before(:each) do
      get :new
    end
    it 'has a 200 status code' do
      expect(response.status).to eq 200
    end
    it 'assigns a user instance variable' do
      expect(assigns[:user]).to be_a User
    end
  end

  describe "#create" do
    context 'when new user is valid' do
      before(:each) do
        post :create, params: {user: {name: "bob", email: "bob@llama.com", password: "ham"}}
      end
      it 'assigns a user instance variable' do
        expect(assigns[:user]).to be_a User
      end
      it 'redirects to root_path' do
        expect(response).to redirect_to root_path
      end
    end
    context 'when user is invalid' do
      before(:each) do
        post :create, params: {user: {name: nil, email: "bob@llama.com", password: "ham"}}
      end
      it 'assigns a user instance variable' do
        expect(assigns[:user]).to be_a User
      end
      it 'assigns an errors instance variable' do
        expect(assigns[:errors]).to include "Name can't be blank"
      end
      it 'has an OK status' do
        expect(response).to be_ok
      end
      it 'renders the new user form' do
        expect(response).to render_template(:new)
      end
    end
  end
end
