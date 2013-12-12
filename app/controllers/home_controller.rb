class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @sms_service = SmsService.last.try(:body)
    @ivr_service = IvrService.last.try(:body)
    @wap_service = WapService.last.try(:body)
    @sms_based = SmsBased.last.try(:body)
    @ivr_based = IvrBased.last.try(:body)
    @wap_based = WapBased.last.try(:body)

    @testimonials = Testimonial.all
    @about = About.last

    @how_is_best_app = HowIsBestApp.last
    @get_connected = GetConnectedAndLetKnow.last
    @our_growth = OurGrowth.last

    @telecom = Partner.where(category: "Telecom Operators")
    @media = Partner.where(category: "Media Partner")
    @other = Partner.where(category: "Other")
  end
end
