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
       true unless catalog_show? catalog
    end
  end



  def child_catalog catalog
    if child_catalog = Catalog.where(parent_id: catalog.id)
      child_catalog
    end
  end

  def catalog_show? catalog
    if catalog_has_product? catalog
     return true
    else
      has_child_and_child_has_product? catalog
    end
  end

  def catalog_has_product? catalog
    catalog.products.empty? ? false : true
  end

  def has_child_and_child_has_product? catalog
    if catalog_has_child? catalog
      return  child_has_product? catalog
    end
    false
  end

  def catalog_has_child? catalog
    Catalog.where(parent_id: catalog.id).empty? ? false : true
  end

  def child_has_product? catalog
    result = false
    children = child_catalog catalog
    children.each do |child|
      result = result || catalog_has_product?(child)
    end
    result
  end

end
