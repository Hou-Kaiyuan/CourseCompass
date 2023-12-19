require 'rails_helper'

RSpec.describe CourseEnrollmentsController, type: :controller do
  describe "GET #edit" do
    context "when user is logged in" do
      before do
        @user = User.create!(
          uid: "1",
          provider: "example_provider",
          oauth_token: "example_token",
          oauth_expires_at: 1.day.from_now,
          email: "user@example.com",
          major: "Computer Science",
          first_name: "John",
          last_name: "Doe",
          profile_pic: "http://example.com/profile_pic.jpg",
          password: "abc123"
        )

        if Course.where(:course_id => "COMS E 6998-025").empty?
          @course1 = Course.create(:course_title => "Adv Computer Networks", :offering_term => "Fall 2023", :course_id => "COMS E 6998-025",
                                   :midterm => 0, :project => 1, :instructor => "Katz-Bassett, Ethan",
                                   :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/")
        end

        @enrollment = CourseEnrollment.create!(user: @user, course: @course1, year: 2021, grade: "A")

        session[:uid] = @user.id
      end

      it "returns http success" do
        get :edit, user_uid: session[:uid], id: @enrollment.uid
        expect(response).to have_http_status(:success)
      end

      it "sets the user and course enrollment" do
        get :edit, user_uid: session[:uid], id: @enrollment.uid
        expect(assigns(:user)).to eq(@user)
        expect(assigns(:course_enrollment)).to eq(@enrollment)
      end
    end
  end

  describe "PATCH #update" do
    context "when user is logged in" do
      before do
        # Create a user with the necessary attributes
        @user = User.create!(
          uid: "1",
          provider: "example_provider",
          oauth_token: "example_token",
          oauth_expires_at: 1.day.from_now,
          email: "user@example.com",
          major: "Computer Science",
          first_name: "John",
          last_name: "Doe",
          profile_pic: "http://example.com/profile_pic.jpg",
          password: "abc123"
        )

        if Course.where(:course_id => "COMS E 6998-025").empty?
          @course1 = Course.create(:course_title => "Adv Computer Networks", :offering_term => "Fall 2023", :course_id => "COMS E 6998-025",
                                   :midterm => 0, :project => 1, :instructor => "Katz-Bassett, Ethan",
                                   :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/")
        end

        # Create course enrollments associated with the user
        @enrollment = CourseEnrollment.create!(user: @user, course: @course1, year: 2021, grade: "A")

        session[:uid] = @user.id
      end

      it "updates the course enrollment" do
        patch :update, id: @enrollment.uid, user_uid: session[:uid], course_enrollment: { grade: "B" }
        expect(response).to redirect_to(profiles_path(id: @user.id))
        expect(flash[:notice]).to eq("Course enrollment was successfully updated.")
        @enrollment.reload
        expect(@enrollment.grade).to eq("B")
      end

      it "renders edit on failure" do
        patch :update, id: @enrollment.uid, user_uid: session[:uid], course_enrollment: { grade: "Invalid" }
        expect(response).to redirect_to(profiles_path(id: @user.id))
      end
    end
  end

  describe "GET #new" do
    context "when user is logged in" do
      before do
        # Create a user with the necessary attributes
        @user = User.create!(
          uid: "1",
          provider: "example_provider",
          oauth_token: "example_token",
          oauth_expires_at: 1.day.from_now,
          email: "user@example.com",
          major: "Computer Science",
          first_name: "John",
          last_name: "Doe",
          profile_pic: "http://example.com/profile_pic.jpg",
          password: "abc123"
        )

        session[:uid] = @user.id
      end

      it "returns http success" do
        get :new, user_uid: @user.uid
        expect(response).to have_http_status(:success)
      end

      it "sets the user and initializes a new course enrollment" do
        get :new, user_uid: @user.uid
        expect(assigns(:user)).to eq(@user)
        expect(assigns(:course_enrollment)).to be_a_new(CourseEnrollment)
      end
    end
  end

  describe "POST #create" do
    context "when user is logged in" do
      before do
        # Create a user with the necessary attributes
        @user = User.create!(
          uid: "1",
          provider: "example_provider",
          oauth_token: "example_token",
          oauth_expires_at: 1.day.from_now,
          email: "user@example.com",
          major: "Computer Science",
          first_name: "John",
          last_name: "Doe",
          profile_pic: "http://example.com/profile_pic.jpg",
          password: "abc123"
        )

        if Course.where(:course_id => "COMS E 6998-025").empty?
          @course1 = Course.create(:course_title => "Adv Computer Networks", :offering_term => "Fall 2023", :course_id => "COMS E 6998-025",
                                   :midterm => 0, :project => 1, :instructor => "Katz-Bassett, Ethan",
                                   :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/")
        end

        session[:uid] = @user.id
      end

      it "creates a new course enrollment" do
        post :create, user_uid: @user.uid, course_enrollment: { course_id: @course1.id, year: 2022, grade: "A" }
        expect(response).to redirect_to(root_path)
      end

      it "redirects to root path on failure" do
        post :create, user_uid: @user.uid, course_enrollment: { course_id: nil, year: 2022, grade: "A" }
        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("Create course enrollment failed.")
      end
    end
  end
end
