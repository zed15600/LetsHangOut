module ApplicationHelper

  def check_nulity(value, returnIfNull)
    if value != nil
      return value
    else
      return returnIfNull
    end
  end

end
