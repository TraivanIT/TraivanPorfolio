class ApplicationController < ActionController::Base

  include DeviseWhitelist #in concern file we have module
  include SetSource #in concern file we have module
  include CurrentUserConcern #in concern file we have module
  include DefaultPageContent #in concern file we have module

  
end
