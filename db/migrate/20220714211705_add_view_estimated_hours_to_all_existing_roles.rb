class AddViewEstimatedHoursToAllExistingRoles < ActiveRecord::Migration[6.1]
  def up
    Role.all.each { |role| role.add_permission! :view_estimated_hours }
  end

  def down
    Role.all.each { |role| role.remove_permission! :view_estimated_hours }
  end
end
