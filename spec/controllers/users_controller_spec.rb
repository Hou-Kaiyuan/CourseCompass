require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET recommendations" do
    it "assigns @user and @recommended_courses_with_gpa and renders the recommendations template" do
      # Create a user
      @user = User.create!(
        uid: "1",
        provider: "google_oauth2",
        oauth_token: "0",
        oauth_expires_at: Time.at(9999999999),
        email: "testuser@example.com",
        major: Faker::Educator.subject,
        first_name: "Test",
        last_name: "User1234567890",
        profile_pic: "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg",
        password: "1234567890",
        )

      if Course.where(:course_id => "COMS E 6998-025").empty?
        @course1 = Course.create(:course_title => "Adv Computer Networks", :offering_term => "Fall 2023", :course_id => "COMS E 6998-025",
                                  :midterm => 0, :project => 1, :instructor => "Katz-Bassett, Ethan",
                                  :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/")
      end
      CourseEnrollment.create!(user: @user, course: @course1, year: 2021, grade: "A")
      CourseEnrollment.create!(user: @user, course: @course1, year: 2022, grade: "C+")
      CourseEnrollment.create!(user: @user, course: @course1, year: 2023, grade: "B")
      CourseEnrollment.create!(user: @user, course: @course1, year: 2020, grade: "C")
      CourseEnrollment.create!(user: @user, course: @course1, year: 2019, grade: "B+")

      # Set session UID
      session[:uid] = @user.id

      # Make a request to recommendations endpoint
      get :recommendations, id: @user.id, recommendation_count: 5

      # Expectations
      expect(assigns(:user)).to eq(@user)
      expect(response).to render_template(:recommendations)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET index" do
    context "when a user is logged in" do
      it "assigns @user based on session uid and renders the index template" do
        @user = User.create!(
          uid: "1",
          provider: "google_oauth2",
          oauth_token: "0",
          oauth_expires_at: Time.at(9999999999),
          email: "testuser@example.com",
          major: Faker::Educator.subject,
          first_name: "Test",
          last_name: "User1234567890",
          profile_pic: "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg",
          password: "1234567890",
        )

        session[:uid] = @user.id

        get :index

        expect(assigns(:user)).to eq(@user)

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
