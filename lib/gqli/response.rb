# frozen_string_literal: true

require 'hashie/mash'

module GQLi
  # Response object wrapper
  class Response
    attr_reader :data, :query, :errors

    def initialize(data, query, errors = [])
      @data = Hashie::Mash.new(data)
      @query = query
      @errors = errors.map { |error| Hashie::Mash.new(error) }
    end
  end
end
