ActiveAdmin.register Tweet do

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

  permit_params :user, :content

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :user
      f.input :content
    end
    f.actions
  end

  index do
    id_column
    column :user
    column :content
    actions
  end

end