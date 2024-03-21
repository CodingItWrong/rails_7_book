class SupportRequestsController < ApplicationController
  def index
    puts "1111111"
    @support_requests = SupportRequest.all
    puts "2222222"
  end

  def update
    support_request = SupportRequest.find(params[:id])
    support_request.update(
      response: params.require(:support_request)[:response],
    )
    SupportRequestMailer.respond(support_request).deliver_now
    redirect_to support_requests_path
  end
end
