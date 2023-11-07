---
title: ToolkitResearch
addon_id: 2312827542
addon_author: SirRandoo
github_author: SirRandoo
github_repository: ToolkitResearch
---

{{ page.title }} is an addon for
{% workshop id: site.data.mods.ccore.id, name: site.data.mods.ccore.name %}.
This addon creates polls when you don't have an active research project. The
options presented will are weighted a bit so modded content, and simple
researches, are prioritized over other research options.

This addon was written prior to the creation of {{ site.data.mods.polls.name }}.
This means that it's not a hard requirement that you use
{{ site.data.mods.polls.name }} in order for the addon to function, but it's
strongly advised. Should you chose to not use {{ site.data.mods.polls.name }},
polls created by this addon **will** clash with {{ site.data.mods.cttk.name }}'s
polls. You can get around this by using a {% mono # %} before the option number
you're trying to vote for like: {% mono #1 %}
{: .note}

We won't go over the settings menu for this addon as it has descriptions of what
each setting does, but here's a picture of the settings menu for an idea of
what you can configure within the addon:

{% image src: "toolkit-raids-settings.png" %}
