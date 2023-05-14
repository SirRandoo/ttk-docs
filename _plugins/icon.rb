# frozen_string_literal: true
module Jekyll
  class IconTag < Liquid::Tag
    def initialize(tag_name, content, tokens)
      super

      content.split(",").each do |pair|
        key, value = pair.strip.split(":")
        value = value.strip.delete "”", "\"", "“"

        case key
        when "src"
          @src = value
        when "alt"
          @alt = value
        end
      end
    end

    def render(context)
      true_src = context[@src] rescue @src
      true_alt = context[@alt] rescue @alt
      relative_path = Liquid::Template.parse("/assets/icons/#{true_src}").render(context)

      "<img loading='lazy' class='icon' src='#{relative_path}' alt='#{true_alt}'>"
    end
  end
end

Liquid::Template.register_tag("icon", Jekyll::IconTag)
