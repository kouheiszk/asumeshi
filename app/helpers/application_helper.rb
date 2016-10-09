module ApplicationHelper
  def url_added_param(url, param_name, param_value)
    uri = URI::parse(url)
    query_array = uri.query.present? ? URI::decode_www_form(uri.query) : []
    query_hash = Hash[query_array]
    query_hash[param_name] = param_value

    uri.query = query_hash.to_param
    uri.to_s
  end
end
