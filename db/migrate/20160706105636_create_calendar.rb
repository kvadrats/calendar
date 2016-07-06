class CreateCalendar < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
    	t.datetime :start
		t.datetime :end
		t.string :timezone
    end
  end
end
