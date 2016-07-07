class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @entries_array = @my_project.time_entries

    render "index"
  end
end
