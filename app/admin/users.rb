ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model

# index do
#   column :name
#   column :email
#   column :password
#   column :role_id
# end

permit_params :name, :email, :password, :password_confirmation, :role_id

    form do |f|
      f.inputs "User" do
        f.input :name
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :role
      end
      f.actions
    end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
