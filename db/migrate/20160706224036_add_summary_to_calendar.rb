class AddSummaryToCalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :summary, :string
  end
end
