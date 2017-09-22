class RhsContactsController < ApplicationController
  def index
    @contacts = RhsContact.all.first(5)
    @contacts_js = @contacts.to_json
  end
end
