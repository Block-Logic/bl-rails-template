module ApplicationHelper
  def class_for_flash(flash_type)
    case flash_type
    when 'success'
      'bg-emerald-100'
    when 'error'
      'bg-red-100'
    when 'alert'
      'bg-amber-100'
    when 'notice'
      'bg-emerald-100'
    else
      'bg-slate-200'
    end
  end
end
