ActiveAdmin.register Product do

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

  permit_params :name, :active,:recommend, :article, :price, :old_price, :slug, :description_page, :keywords, :short_description, :full_description, :image

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :active
      f.input :recommend
      f.input :price
      f.input :old_price
      f.input :slug
      f.input :description_page
      f.input :keywords
      f.input :image
      f.input :short_description
      f.input :full_description, as: :text, label: 'Полное описнаие'

    end
    f.button "Отправить"
  end

end
