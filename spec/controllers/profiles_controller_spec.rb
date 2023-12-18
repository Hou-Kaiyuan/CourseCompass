require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  describe "GET #show" do
    context "when user is logged in" do
      before do
        # Create a user with the necessary attributes
        @user = User.create!(
          uid: "12304",
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
        @enrollments = [
          CourseEnrollment.create!(user: @user, course: @course1, year: 2021, grade: "A"),
        ]
        session[:uid] = @user.id
      end

      it "returns http success" do
        get :show
        expect(response).to have_http_status(:success)
      end

      it "sets the user" do
        get :show
        expect(assigns(:user)).to eq(@user)
      end

      it "sets course enrollments" do
        get :show
        expect(assigns(:course_enrollments)).to match_array(@enrollments)
      end
    end

    context "when user is not logged in" do
      it "redirects to the login page" do
        get :show
        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("You must be logged in to view this page.")
      end
    end
  end
end
