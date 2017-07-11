class AddColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :nom, :string
    add_column :contacts, :prenom, :string
    add_column :contacts, :email, :string
    add_column :contacts, :societe, :string
    add_column :contacts, :date, :string
    add_column :contacts, :type, :string
    add_column :contacts, :nombre, :string
    add_column :contacts, :budget, :string
    add_column :contacts, :message, :text
  end
end
