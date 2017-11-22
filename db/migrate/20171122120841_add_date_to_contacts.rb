class AddDateToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :date, :date
  end
end
