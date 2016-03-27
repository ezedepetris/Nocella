ActiveAdmin.register Company do
  permit_params :name

  show do |company|
      attributes_table do
        row :id
        row :name
      end
    end

    form do |f|
      f.inputs "Empresa", multipart: true do
        f.input :name
      end
      f.actions
    end

    index do
      id_column
      column :name
      actions
    end

    filter :id
    filter :name

end
