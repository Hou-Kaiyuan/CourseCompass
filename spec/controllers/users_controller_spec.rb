require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    context "when a user is logged in" do
      it "assigns @user based on session uid and renders the index template" do
        user = User.create!(
          provider: "google_oauth2",
          uid: "1234567890",
          oauth_token: "0",
          oauth_expires_at: Time.at(9999999999),
          email: "testuser@example.com",
          major: Faker::Educator.subject,
          first_name: "Test",
          last_name: "User1234567890",
          profile_pic: "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg",
          password: "1234567890",
          password_confirmation: "1234567890"
        )

        session[:uid] = user.id

        get :index

        expect(assigns(:user)).to eq(user)

        expect(response).to render_template(:index)

        expect(response).to have_http_status(:ok)
      end
    end

    context "when no user is logged in" do
      it "does not assign @user and still renders the index template" do
        session[:uid] = nil

        get :index

        expect(assigns(:user)).to be_nil

        expect(response).to render_template(:index)

        expect(response).to have_http_status(:ok)
      end
    end
  end
end
