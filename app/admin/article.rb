ActiveAdmin.register Article do
  permit_params :title, :description, :category, :content, :auteur
  CAT = %w(Actu Event Presse Chronique)

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
      input :category, placeholder: "Catégorie", :as => :select, :collection => CAT
      f.input :auteur
      f.input :content
    end
    f.submit
  end
end
