require 'page-object'
include PageObject::PageFactory

class GoogleHome
  include PageObject

  page_url 'google.com'

  text_field(:search_phrase, id: 'lst-ib')
  link(:about, text: 'About')
  def search_for(phrase)
    self.search_phrase = phrase
      @browser.send_keys :enter
      sleep 4
  end
end
