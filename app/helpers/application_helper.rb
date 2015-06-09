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

  def catalog_list
    catalogs = Catalog.all
    catalog_has_products? catalogs
  end

  def catalog_has_products? catalogs
    catalogs.delete_if do |catalog|
       catalog.products.empty?
    end
    catalogs
  end

  def child_catalog catalog
    if child_catalog = Catalog.where(parent_id: catalog.id)
      return child_catalog
    end
  end

end
