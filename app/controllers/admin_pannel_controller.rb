class AdminPannelController < ApplicationController
layout 'admin_layout'

  def home
    @sms_service = SmsService.new
    @ivr_service = IvrService.new
    @wap_service = WapService.new
    # raise params.inspect
  end

  def services
    @sms_based = SmsBased.new
    @ivr_based = IvrBased.new
    @wap_based = WapBased.new
  end

  def testimonials
    @testimonial = Testimonial.new
  end

  def about
    @about = About.new
    @how_is_best_app = HowIsBestApp.new
    @get_connected_and_let_know = GetConnectedAndLetKnow.new
    @our_growth = OurGrowth.new
  end

  def our_partners
    @partner = Partner.new
    @partners = Partner.all
  end

  def contact
    @contacts = Contact.all
  end
end
