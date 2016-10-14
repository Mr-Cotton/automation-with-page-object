require 'page-object'

class GoogleSearchResults
  include PageObject
    def search_results
      browser.divs(class: 'rc').collect do |div|
      div.a.text
    end
  end
end