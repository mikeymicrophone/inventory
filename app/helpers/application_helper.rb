module ApplicationHelper
  def link_to_name obj
    if obj
      if obj.respond_to?(:name)
        link_to obj.name, obj
      else
        link_to obj.id, obj
      end
    else
      ''
    end
  end
end
