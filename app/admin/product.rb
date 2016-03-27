ActiveAdmin.register Product do
  config.batch_actions = false
  menu priority: 6
  permit_params :name, :price, :code, :stock,:company_id, :distributor_id

  show do |product|
    attributes_table do
      row :id
      row :name
      row :price do
        number_to_currency(product.price)
      end
      row :code
      row :stock
      row :company
      row :distributor
    end
  end

  form do |f|
    f.inputs "Producto", multipart: true do
      f.input :name
      f.input :price
      f.input :code
      f.input :stock
      f.input :company, as: :select
      f.input :distributor, as: :select
    end
    f.actions
  end

  index do
    id_column
    column :name
    column :price do |product|
      number_to_currency(product.price)
    end
    column :code
    column :stock
    column :company
    column :distributor
    actions
  end

  filter :id
  filter :name
  filter :price
  filter :distributor
  filter :company
end
