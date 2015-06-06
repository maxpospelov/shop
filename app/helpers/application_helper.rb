module ApplicationHelper
  def goods_visit_list
    VisitProduct.where(sessionid: request.session_options[:id]).limit(12)
  end
end
