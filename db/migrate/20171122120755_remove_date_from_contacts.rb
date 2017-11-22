class RemoveDateFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :date, :string
  end
end
