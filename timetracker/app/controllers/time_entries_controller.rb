class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @entries_array = @my_project.time_entries

    render "index"
  end

  def new
    @my_project = Project.find(params[:project_id])

    # @my_entry = @my_project.time_entries.new
    @my_entry = TimeEntry.new(project_id: @my_project.id)

    render "new"
  end

  def create
    @my_project = Project.find(params[:project_id])

    # @my_entry = @my_project.time_entries.new(
    #   hours: params[:time_entry][:hours],
    #   minutes: params[:time_entry][:minutes],
    #   comment: params[:time_entry][:comment],
    #   date: params[:time_entry][:date])

    @my_entry = TimeEntry.new(
      project_id: @my_project.id,
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes],
      comment: params[:time_entry][:comment],
      date: params[:time_entry][:date])

    if @my_entry.save
      redirect_to "/projects/#{@my_project.id}/time_entries"
    else
      render "new"
    end
  end
end
