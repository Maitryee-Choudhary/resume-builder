class ProjectsController < ApplicationController
    before_action :current_user, only: [:new]

    def new
        @profile = current_user.profile
        current_user.profile.projects.create
        flash[:success] = "Project added."
        redirect_to edit_path
    end

end