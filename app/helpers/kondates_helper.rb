module KondatesHelper
  def image_url_from_restaurant(restaurant)
    if restaurant.image_url.shop_image1.present?
      restaurant.image_url.shop_image1
    elsif restaurant.image_url.shop_image2.present?
      restaurant.image_url.shop_image2
    else
      image_path 'no_image.png'
    end
  end
end
