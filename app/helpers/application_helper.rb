module ApplicationHelper

  def full_title page_title = ""
    base_title = t :title
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    if /class=.*hide_error.*/ =~ html_tag || /type=.*hidden.*/ =~ html_tag
      html_tag
    else
      if instance.error_message.kind_of? Array
        error_msg = ""
        instance.error_message.each do |message|
          error_msg += %(<p class="validation-error"style="color:red">#{message}</p>)
        end
        error_msg
      else
        error_msg = %(<p class="validation-error" style="color:red">#{instance.error_message}</p>)
      end
      if /class=.*top_error.*/ =~ html_tag
        "#{error_msg}#{html_tag}"
      else
        "#{html_tag}#{error_msg}"
      end
    end.html_safe
  end

  def color_status status
    case status
    when "init"
      "success"
    when "inprogress"
      "primary"
    when "finished"
      "default"
    end
  end
end
