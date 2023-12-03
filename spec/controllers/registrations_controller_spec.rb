require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe 'POST registrations#create' do
  # Arrange
  new_user =  {email: 'test@columbia.edu', password: '1234', first_name: 'aa', last_name: 'aa'}

    context 'with valid credentials' do
      it 'logs in the user' do
        # Act
        post :create, user: { email: new_user[:email], password: new_user[:password], password_confirmation: new_user[:password], first_name: new_user[:first_name], last_name: new_user[:last_name]}
        user = User.find_by(email: new_user[:email])
        # Assert
        expect(session[:uid]).to eq(user.id)
      end

      it 'redirects to the user page' do
        # Act
        post :create, user: { email: new_user[:email], password: new_user[:password], password_confirmation: new_user[:password], first_name: new_user[:first_name], last_name: new_user[:last_name]}
        user = User.find_by(email: new_user[:email])
        # Assert
        expect(response).to redirect_to(courses_path(id: user.id))
      end
    end
  end

  describe 'GET registrations#new' do
    it 'assigns a new user to @user' do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end
end

end