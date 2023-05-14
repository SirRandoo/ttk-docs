# frozen_string_literal: true

module Jekyll
  class MonospacedTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super

      @text = text.delete " "
    end

    def render(context)
      "<span class='monospaced'>#{@text}</span>"
    end
  end
end

Liquid::Template.register_tag("mono", Jekyll::MonospacedTag)
