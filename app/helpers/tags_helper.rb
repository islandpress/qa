module TagsHelper

  def tag_schema(name, count=nil)
    computed_name = count ? "##{name} (#{count})" : "##{name}"
    html = link_to(computed_name, tag_path(id: name), class: 'tags-list__tag')
    raw html
  end

  def tag_with_desc_schema(name,count=nil)
    html = "<div class=\"tag #{Tag.special?(name)}\">"
    html << link_to(name,tag_path(:id=>name))
    html << "<span><strong> x #{count}</strong></span>" if count
#    html << "<div class=\"tdesc\">sadas sad as d asd as d asdasd as das das </div>"
    html << "</div>"
    raw html
  end


end
