# frozen_string_literal: true

module Jekyll
  class WorkshopLinkTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super

      @w_id = ""
      @w_name = ""

      text.split(",").each do |pair|
        key, value = pair.strip.split(":")

        case key
        when "id"
          @w_id = value.strip
        when "name"
          @w_name = value.strip.delete "”", "\"", "“"
        end
      end
    end

    def render(context)
      true_id = Integer(context[@w_id.strip]) rescue 0
      true_name = context[@w_name.strip] rescue @w_name

      "<a href=\"https://steamcommunity.com/sharedfiles/filedetails/?id=#{true_id}\">#{true_name}</a>"
    end
  end
end

Liquid::Template.register_tag("workshop", Jekyll::WorkshopLinkTag)
