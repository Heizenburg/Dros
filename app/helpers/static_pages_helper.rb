module StaticPagesHelper

  def full_title( page_title = '')
    base_title = 'Dros'
    if page_title.empty?
        puts base_title
      else
        puts page_title + ' | ' + base_title
    end
  end

end
