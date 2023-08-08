class OptOutRequestMailer < ApplicationMailer
  def new_opt_out_request_notice(request_id)
    @opt_out_request = OptOutRequest.find(request_id)
    mail(to: OPT_OUT_REQUESTS_MANAGER, subject: 'New opt-out request')
  end
end
