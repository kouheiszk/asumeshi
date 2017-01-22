module ApplicationHelper
  def url_added_param(url, param_name, param_value)
    uri = URI::parse(url)
    query_array = uri.query.present? ? URI::decode_www_form(uri.query) : []
    query_hash = Hash[query_array]
    query_hash[param_name] = param_value

    uri.query = query_hash.to_param
    uri.to_s
  end

  def bootstrap_class_for(flash_type)
    {
        success: 'alert-success',
        error: 'alert-danger',
        alert: 'alert-warning',
        notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages
    flash.each do |flash_type, message|
      concat(
          content_tag(:div, class: 'container') do
            content_tag(:div, message, class: "alert #{bootstrap_class_for(flash_type)}")
          end
      )
    end
  end
end
