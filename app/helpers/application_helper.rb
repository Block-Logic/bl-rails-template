module ApplicationHelper
  def flash_message_is_cookie_info(msg)
    msg == t('flash.cookie')
  end
end
