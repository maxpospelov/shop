module ApplicationHelper
  def goods_visit_list
    VisitProduct.where(sessionid: request.session_options[:id]).limit(12)
  end

  def brands_list
    Brand.all
  end

  def number_to_rubel price
    number_to_currency(price, unit: "руб.", separator: ".", delimiter: " ", format: "%n %u")
  end
end
