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
{{ site.data.mods.core.name }} is no longer being updated on the Steam workshop.
You'll have to download the version created by
[NryChan](https://github.com/harleyknd1)
[here](https://github.com/harleyknd1/twitchtoolkit/releases). Once you've
downloaded both {{ site.data.mods.core.name }} and
{{ site.data.mods.ttk.name }}, you can unzip them into your mods folder. If you
don't know where your mods folder is you can follow the steps below:

1. Open your Steam library.
2. Right-click on "RimWorld" in your library.
3. Click "Browse local files..." under "Manage".

Once you have your mods folder opened, you can unzip the zip(s) you've
downloaded into your mods folder. Your mods folder afterwards have two folders
labeled "{{ site.data.mods.ttk.name }}" and "{{ site.data.mods.core.name }}", or
something similar. Both folders should also have a sub-folder named "About". If
neither of those are true, you should move the directories around until it
resembles this folder structure:

{% include file_tree.html structure=site.data.tree.installation %}

For 1.4 and up, {{ site.data.mods.utils.name }} is still highly recommended as
it provides various fixes, quality of life improvements, and more content for
you and your viewers.
