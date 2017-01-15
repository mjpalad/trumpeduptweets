ActiveAdmin.register Replacement do
  permit_params :name, :words_to_find_raw, :words_to_substitute_raw

  menu parent: "Vocabulary", priority: 1

  form do |f|
    f.inputs :name
    f.inputs "Words to Find" do
      f.input :words_to_find_raw, :as => :text
    end
    f.inputs "Words to Substitute" do
      f.input :words_to_substitute_raw, :as => :text
    end
    actions
  end

end
