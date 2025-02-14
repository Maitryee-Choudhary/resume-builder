class EducationsController < ApplicationController
    before_action :current_user, only: [:new]

    def new
        @profile = current_user.profile
        current_user.profile.educations.create
        flash[:success] = "Education added."
        redirect_to edit_path
    end

end
