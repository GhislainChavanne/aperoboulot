ActiveAdmin.register Article do
  permit_params :title, :description, :category, :content

show do
    attributes_table do
      row :title
      row :description
      row :category
      row :content
    end
    active_admin_comments
  end
end
