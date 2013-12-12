class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @sms_service = SmsService.last.body
    @ivr_service = IvrService.last.body
    @wap_service = WapService.last.body
    @sms_based = SmsBased.last.body
    @ivr_based = IvrBased.last.body
    @wap_based = WapBased.last.body

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
