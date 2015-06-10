ActiveAdmin.register Order do

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

  permit_params :user_name,:email, :address, :phone, :line_items

  form do |f|
    f.inputs 'Contact' do
      f.input :user_name
      f.input :email
      f.input :phone
      f.input :address

      table_for(order.line_items) do
        column :name do |line_item|
          link_to line_item.product.name, product_path(line_item.product)
        end
        column :images do |line_item|
          link_to image_tag(line_item.product.image_url(:thumb)), product_path(line_item.product)
        end
        column :count
        column :edit do |line_item|
          link_to "Edit", "#"
        end
      end
      f.actions
    end
  end


end
