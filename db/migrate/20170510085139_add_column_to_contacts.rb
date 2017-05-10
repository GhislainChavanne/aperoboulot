class AddColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :nom, :string
    add_column :articles, :prenom, :string
    add_column :articles, :email, :string
    add_column :articles, :societe, :string
    add_column :articles, :date, :string
    add_column :articles, :type, :string
    add_column :articles, :nombre, :string
    add_column :articles, :budget, :string
    add_column :articles, :message, :text
  end
end
