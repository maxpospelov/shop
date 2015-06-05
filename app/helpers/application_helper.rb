module ApplicationHelper
  def goods_visit_list
    VisitProduct.where(sessionid: request.session_options[:id])
  end

end
