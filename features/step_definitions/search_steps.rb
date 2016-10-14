require 'page-object'
include PageObject::PageFactory

When(/^I search for a common phrase$/) do
  visit_page(GoogleHome) do |page|
    page.search_for 'intel'
  end
                  #opens browser
                  #goes to google.com
                  # enters intel
                  # presses enter key to search
end

Then(/^every result title should include the word i searched for$/) do
  on_page(GoogleSearchResults) do |page|
    expect(page.search_results.size).to be > 0
    titles = page.search_results

    #search results is a method defined in class GoogleSearchResults

    titles.each do |title|
      expect(title.downcase).to include 'intel'
    end
  end
end