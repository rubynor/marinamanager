module MarinaHelper
  def menu_link(name, path)
    link_to name, path, class: "btn btn-primary btn-lg text-light"
  end
end
