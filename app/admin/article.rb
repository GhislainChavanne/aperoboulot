ActiveAdmin.register Article do
  permit_params :title, :description, :category, :content


  form(:html => { :multipart => true }) do |f|
    f.inputs "Article" do
      f.input :title
      f.input :description
      f.input :category
      f.input :content
    end
    f.submit
  end
end
