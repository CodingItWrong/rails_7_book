class SupportRequestsController < ApplicationController
  def index
    puts "1111111"
    @support_requests = SupportRequest.all
    puts "2222222"
  end
end
