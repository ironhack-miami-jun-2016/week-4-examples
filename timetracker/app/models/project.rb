class Project < ApplicationRecord
  has_many :time_entries

  def self.clean_old
    old_projects = Project.where("created_at < ?", 1.week.ago)
    old_projects.destroy_all
  end
end

# In the rails console try:
  # Project.clean_old


# the_project = Project.find_by(id: 1)
# the_project.time_entries

#      does the same as
# TimeEntry.where(project_id: 1)
