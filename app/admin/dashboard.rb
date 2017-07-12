ActiveAdmin.register_page "Dashboard" do
  ActiveAdmin.register Article do
  menu label: "Les articles Apéro-Boulot"
end

action_item do
  link_to 'Site Web', root_path, target: "_blank"
end

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    columns do
      column do
        panel "Liste des articles" do
          ol do
            Article.all.map do |article|
              li (article.title)
            end
          end
        end
      end
    end
end
end
