#frozen_string_literal: true

# classe de interface com a API
class DojoAPI
  include HTTParty
  base_uri API_URI
  headers API_HEADERS
  default_timeout 120

  def initialize() end

  def find_generic
    self.class.get("/",
                   headers: API_HEADERS)
  end

  def find_specific(person)
    self.class.get("/person",
                   headers: API_HEADERS,
                   query: person)
  end
end
