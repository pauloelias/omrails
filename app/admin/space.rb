ActiveAdmin.register Space do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :user, :title, :desscription, :rating

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :user
      f.input :title
      f.input :desscription
      f.input :rating
    end
    f.actions
  end

  index do
    id_column
    column :user
    column :title
    column :desscription
    column :rating
    actions
  end
end
