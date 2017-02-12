ActiveAdmin.register User do

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

  permit_params :email, :admin, :username, :name, :password, :password_confirmation

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :username
      f.input :password
      f.input :password_confirmation
      f.input :name
      f.input :email
      f.input :admin
    end
    f.actions
  end

  index do
    id_column
    column :username
    column :name
    column :email
    column :admin
    actions
  end

end
