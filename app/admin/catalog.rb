ActiveAdmin.register Catalog do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  permit_params :name, :active, :parent_id, :address, :title, :keywords, :page_description, :image, :full_description

  form do |f|
    f.inputs "Catalog details" do
      f.input :name
      f.input :active
      f.input :parent_id, as: :select, collection: Catalog.where(parent_id: nil) << {parent_id: nil} ,prompt: "Select catalog"
      f.input :address
      f.input :title
      f.input :keywords
      f.input :page_description
      f.input :image
      f.input :full_description
    end
    f.button "Отправить"
  end

end
