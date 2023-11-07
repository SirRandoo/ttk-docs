---
title: Installation
layout: default
---

# Installation

## 1.3 and Below

Twitch Toolkit can install be installed by simply subscribing to the mod on the
{% workshop id: site.data.mods.ttk.id, name: "Steam workshop" %},
as well as its dependencies
{% workshop id: site.data.mods.core.id, name: site.data.mods.core.name %} and
{% workshop id: site.data.mods.harmony.id, name: site.data.mods.harmony.name %}.
It's also highly advised to subscribe to
{% workshop id: site.data.mods.utils.id, name: site.data.mods.utils.name %}
as well. All mods can be ordered automatically by clicking "Auto-sort mods" in
RimWorld's mod config, but generally they should be closer to the bottom of your
mod list. In the end your load order should look something along the lines of:

1. Harmony
2. RimWorld
3. DLCs
4. *Other mods*
5. ToolkitCore
6. Twitch Toolkit
7. (Optional) ToolkitUtils

Ensuring Twitch Toolkit is towards the bottom should help alleviate any issues
where the mod can't properly find content due to other mods creating content at
startup, or general weirdness that may occur due to how RimWorld loads modded
content.

## 1.4 and Beyond

Starting with the 1.4 update for RimWorld, {{ site.data.mods.ttk.name }} and
{{ site.data.mods.core.name }} is no longer being updated on the Steam workshop
as only Hodl can update them due to how Ludeon set up the workshop. As a result,
you should use the community version of
{% workshop id: site.data.mods.ccore.id, name: site.data.mods.ccore.name %} and
{% workshop id: site.data.mods.cttk.id, name: site.data.mods.cttk.name %} if you
want to play on 1.4. The above load order rules still apply to the community
version.
