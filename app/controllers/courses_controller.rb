class CoursesController < ApplicationController

    def show
        id = params[:id]
        @course = Course.find(id)
        # will render app/views/courses/show.<extension> by default
    end
    
    def index
        @courses = Course.all
    end

end
