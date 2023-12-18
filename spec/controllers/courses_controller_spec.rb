require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
    before(:all) do
        if Course.where(:course_id => "COMS E 6998-024").empty?
          Course.create(:course_title => "Adv Computer Networks", :offering_term => "Fall 2023", :course_id => "COMS E 6998-024",
                       :midterm => 0, :project => 1, :instructor => "Katz-Bassett, Ethan",
                       :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-024/")
          Course.create(:course_title => "Adv Mach Lrng Health &med", :offering_term => "Fall 2023",
                       :midterm => 0, :project => 1, :instructor => "Joshi, Shalmali", :course_id => "COMS W 4995-014",
                       :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4995-20233-014/")
        end
        
        if Course.where(:course_id => "COMS W 3157-001").empty?
          Course.create(:course_title => "Advanced Programming", :offering_term => "Fall 2023",
                          :midterm => 0, :project => 1, :instructor => "Lee, Jae Woo",:course_id => "COMS W 3157-001",
                          :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W3157-20233-001/")
          Course.create(:course_title => "Adv Web Design Studio", :offering_term => "Fall 2023",:course_id => "COMS E 6998-012",
                            :midterm => 0, :project => 1, :instructor => "Chilton, Lydia B",
                            :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/E6998-20233-012/")
        end
      end

    after(:all) do
        Course.delete_all
    end

    describe "GET show" do
      it "assigns @course and renders the show template" do
        course = Course.first
        get :show, id: course.id
        expect(assigns(:course)).to eq(course)
        expect(response).to render_template(:show)
        expect(response).to have_http_status(:ok)
      end
    end

    describe "GET new" do
      it "assigns a new course to @course and renders the new template" do
        get :new
        expect(assigns(:course)).to be_a_new(Course)
        expect(response).to render_template(:new)
        expect(response).to have_http_status(:ok)
      end
    end

    describe "POST create" do
      context "with invalid parameters" do
        it "renders the new template" do
          post :create, course: { invalid_param: 'value' }
          expect(response).to render_template(:new)
          expect(flash[:alert]).to match(/Course creation was unsuccessful. Please try again.*/)
        end
      end
    end

    describe "GET edit" do
      it "assigns @course and renders the edit template" do
        course = Course.first
        get :edit, id: course.id

        expect(assigns(:course)).to eq(course)
        expect(response).to render_template(:edit)
        expect(response).to have_http_status(:ok)
      end
    end

    describe "GET index" do
        it "assigns @courses and renders the index template" do
          get :index
      
          expect(assigns(:courses)).to match_array(Course.all)
          expect(response).to render_template(:index)
          expect(response).to have_http_status(:ok)
        end

        context "with search parameter" do
          it "assigns filtered @courses and renders the index template" do
            get :index, search: 'engineering'
            expect(response).to render_template(:index)
            expect(response).to have_http_status(:ok)
          end
        end
    end


    describe "creates" do
        it "course with valid parameters" do
          get :create, {:course => {:course_title => "Creative Embedded Systems", :offering_term => "Spring 2024", :course_id => "BC 3930-001",
                        :midterm => 0, :project => 1, :instructor => "Santolucito, Mark",
                        :website => "https://doc.sis.columbia.edu/#subj/COMS/BC3930-20241-001/"}}
          expect(response).to redirect_to courses_path
          expect(flash[:notice]).to match(/Creative Embedded Systems was successfully created./)
          Course.find_by(:course_title => "Creative Embedded Systems").destroy
        end
      end


    describe "updates" do
      it "course's valid attributes" do
        course = Course.create(:course_id => "COMS W 4735-001", :course_title => "Computational Aspects of Robotics", :offering_term => "Fall 2023",
                               :midterm => 1, :project => 1, :instructor => "Allen, Peter K",
                               :website => "http://www.columbia.edu/cu/bulletin/uwb/subj/COMS/W4735-20233-001/")
        get :update, {:id => course.id, :course =>
          {:time => "11:40 AM - 12:55 PM"}
        }

        expect(response).to redirect_to course_path(course)
        expect(flash[:notice]).to match(/Computational Aspects of Robotics was successfully updated./)
        course.destroy
      end
    end
end
