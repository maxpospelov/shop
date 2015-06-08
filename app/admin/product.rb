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
  index do
    column :id
    column :name
    column :active
    column :recommend
    column :price, :sortable => :price do |product|
      div :class => "price" do
         number_to_rubel product.price
       end
    end
    column :short_description

    actions
  end

  permit_params :name, :active,:recommend, :article, :price, :old_price, :slug, :description_page, :keywords, :short_description, :full_description, :image, :brand_id, :catalog_id, :product_id

  form(:html => { :multipart => true }) do |f|
    f.inputs "Details" do
      f.input :name
      f.input :active
      f.input :recommend
      f.input :brand_id, as: :select, collection: Brand.all
      f.input :catalog_id, as: :select, collection: Catalog.all
      f.input :price
      f.input :old_price
      f.input :slug
      f.input :description_page
      f.input :keywords
      f.input :image, :as => :hidden
      f.input :image, as: :file, hint: f.image_tag(f.object.image.url)
      f.input :short_description
      f.input :full_description, as: :text, label: 'Полное описнаие'
    end
    f.actions
  end

end
