require 'active_support/core_ext'
require 'patron'
require 'sax-machine'

module EventInventory
  ROOT = 'http://services.eventinventory.com/webservices/'.freeze
  CATALOG = File.join(ROOT, 'ticketsearch.asmx').freeze
  EDIT_ORDER = File.join(ROOT, 'editorder.asmx').freeze
  VIEW_ORDER = File.join(ROOT, 'vieworder.asmx').freeze

  OLD_OPERATIONS = %w[
    ListEvents_Active
    GetEventList
    ListVenues_Active
    GetVenueList
    ListBrokers_Active
    ListShipping_Active
    GetTicketInfo
    CheckTicketAvailability
    GetVenueMapURL
    ListProductions_Active
    ListTickets
  ]

  Error = Class.new(StandardError)
  AuthorizationError = Class.new(Error)
  ParameterError = Class.new(Error)
  NetworkError = Class.new(Error)

  mattr_accessor :security_token
  mattr_accessor :proxy

  autoload :Base, 'event_inventory/base'
  autoload :Catalog, 'event_inventory/catalog'
  autoload :FormatHelper, 'event_inventory/format_helper'
  autoload :ParseHelper, 'event_inventory/parse_helper'
end
