module ApplicationHelper
  def site
    "CornerLabel"
  end
  
  def flash_class(type)
    case type
    when :alert
      "warning"
    when :notice
      "success"
    else
      " "
    end
  end
end
