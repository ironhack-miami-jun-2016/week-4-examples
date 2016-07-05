class ProjectsController < ApplicationController
  # get /projects
  def index
    @projects_array = Project.order(created_at: "desc")
                             .limit(10)

    render "index"
  end
end
