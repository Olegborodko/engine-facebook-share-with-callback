module Facebookshare
  module ApplicationHelper
    def facebook_share(id=nil,
                       app_id=nil,
                       callback=nil,
                       url=nil,
                       title=nil,
                       description=nil,
                       image=nil,
                       image_width=nil,
                       image_height=nil,
                       image_type=nil)
      result = ""
      result << "<a id='#{id}' data-result='nil' class='facebook_d_style_45654321'><img src='#{image_path('facebookshare/button-fb.png')}'></a>"
      result << "<script>$('##{id}').facebook_share({app_id: '#{app_id}',
                callback: '#{callback}', url: '#{url}',title: '#{title}',
                description: '#{description}',image: '#{image}',image_width: '#{image_width}',
                image_height: '#{image_height}',image_type: '#{image_type}'});</script>"
      result.html_safe
    end

  end
end
