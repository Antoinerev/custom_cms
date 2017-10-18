class RhsContactsController < ApplicationController
  def index
    @contacts = RhsContact.all.first(5)
    @contacts_js = @contacts.to_json
  end

  def show
    @contact = RhsContact.find(params[:id])
    @contact_js = @contact.to_json
  end
end
