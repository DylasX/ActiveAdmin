ActiveAdmin.register Book do

  scope :all
  scope :crime



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
config.per_page = 10
index do
  column  'Nombre',:name
  column 'Autor',:author
  column 'Género',:genre
  column 'Precio',:price do |book|
    number_to_currency book.price
  end
  actions
end

filter :name
filter :author, :as => :check_boxes
filter :genre
filter :price



end
