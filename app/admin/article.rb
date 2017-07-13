ActiveAdmin.register Article do
  permit_params :title, :description, :category, :content, :auteur

  menu label: "1. ACTUS"

  index do
    selectable_column
    column :title
    column :description
    column :category
    column :created_at
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Article" do
      f.input :title
      f.input :description
      input :category, placeholder: "Catégorie", :as => :select, :collection => ["Actu", "Event", "Presse", "Chronique"]
      f.input :auteur
      f.input :content
    end
    f.submit
  end
end
