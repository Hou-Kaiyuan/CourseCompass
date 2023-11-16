require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'POST sessions#create' do
    # Arrange
    let(:user) { User.create({email: 'test1@columbia.edu', password: '1234', password_confirmation: '1234'}) }

    context 'with valid credentials' do
      it 'logs in the user' do
        # Act
        post :create, user: { email: user.email, password: user.password }
        # Assert
        expect(session[:user_id]).to eq(user.id)
      end

      it 'redirects to the user page' do
        # Act
        post :create, user: { email: user.email, password: user.password }
        # Assert
        expect(response).to redirect_to(courses_path(id: user.id))
      end
    end

    context 'with invalid credentials' do
      it 'does not log in the user' do
        # Act
        post :create, user: { email: 'invalid@example.com', password: 'wrongpassword' }
        # Assert
        expect(session[:user_id]).to be_nil
      end

      it 'redirects to the login page' do
        # Act
        post :create, user: { email: 'invalid@example.com', password: 'wrongpassword' }
        # Assert
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'DELETE sessions#destroy' do
  # Arrange
  let(:user) { User.create({email: 'test1@columbia.edu', password: '1234', password_confirmation: '1234'}) }

    it 'logs out the user' do
        session[:user_id] = user.id
        # Act
        delete :destroy
        # Assert
        expect(session[:user_id]).to be_nil
    end

    it 'redirects to the root page' do
        session[:user_id] = user.id
        # Act
        delete :destroy
        # Assert
        expect(response).to redirect_to(root_path)
    end
end
end
