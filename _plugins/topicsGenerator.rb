require 'nokogiri'

module Jekyll
    module TopicsGenerator
        def topics_generate(html)
            topics_html = ''
            doc = Nokogiri::HTML(html)
            @topic_number = {'h6' => 0, 'h5' => 0, 'h4' => 0, 'h3' => 0, 'h2' => 0, 'h1' => 0}
            doc.css('h1,h2,h3,h4,h5,h6').each do |head|
                self::reset_topic_number(head)
                topics_info  = self::get_topic_info(head)
                topics_id    = "topics_#{topics_info[:head_id]}"
                topics_class = "topics_#{head.name}"
                topics_html += "<li id='#{topics_id}' class='#{topics_class}'><a href='##{topics_info[:head_id]}'>#{topics_info[:title]} #{head.text}</a></li>"
                head.set_attribute('id', topics_info[:head_id])
                head.content = "#{topics_info[:title]} #{head.text}"
                head.add_child("<span class='goto_topics_menu'><a href='##{topics_id}'>menu</a></span>")
            end
            if topics_html != ''
              topics_html = '<ul id="topics_menu" class="topics">' + topics_html + '</ul>'
            else
              return html
            end
            doc.css('body').children.before(topics_html)
            doc.css('body').children.to_xhtml(indent:3, indent_text:"")
        end

        def get_topic_info(head)
          if head.name == 'h1'
            return {:head_id =>'top_topics', :title => ''}
          end
          num = @topic_number.sort_by {|k, v| k}
          list = []
          num.each do |name, count|
            if name == 'h1'
              next
            end
            if count.zero?
              break
            end
            list.push(count)
          end
          topics_no = list.join('.')
          return {:head_id => topics_no, :title => topics_no}
        end

        def reset_topic_number(head)
          @topic_number.each do |name, count|
            if head.name == name
              @topic_number[name] += 1
              break
            end
            @topic_number[name] = 0
          end
        end
    end
end
Liquid::Template.register_filter(Jekyll::TopicsGenerator)