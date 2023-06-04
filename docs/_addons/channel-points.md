---
title: Channel Points
addon_id: 1916651243
addon_author: swemoney
github_author: swemoney
github_repository: Toolkit---ChannelPoints
---

{{ page.title }} is an addon for
{% workshop id: site.data.mods.ttk.id, name: site.data.mods.ttk.name %}. This
addon gives viewers the ability to convert their channel points into
{{ site.data.mods.ttk.name }}'s currency through channel redeems. The settings
menu for the addon will look something like this:

{% image
    src: "channel-points-settings.png",
    alt: site.data.images.alt.channel_points.settings %}

The first thing you might've noticed is the important note at the top of the
settings menu. What this means is every channel point redeem you create that you
want this mod to use **must** require a message to be sent along side it. This
is due to the way this addon functions internally. With that note out of the
way, we'll move on down to the bottom half of the menu (skipping the debug
checkbox).

## Channel Point Name

The text in this field is used by the addon whenever a viewer redeems a reward
linked to the addon. It simply states something along the lines of "Thank you
for converting your {% mono P %} to {{ site.data.mods.ttk.name }} coins!",
where {% mono P %} is the text in the field.

## Rewards

Moving on back to the top half we can see 6 columns named:

- [Name](#name)
- [UUID](#uuid)
- [Amount](#amount)
- [Auto](#auto)
- [Enable](#enable)
- [Delete](#delete)

### Name

The "name" column is the name of the redeem. This value isn't significant to the
viewer, and only serves as a way of identifying the associated [UUID](#uuid) and
reward amount; you could even leave it blank if you don't need a name.

### UUID

The "UUID" column, which stands for **U**niversally **U**nique **Id**entifier,
is where you put the id of the channel point reward on Twitch. You can get the
id for a channel point reward by clicking the accompanying
{% icon src: "channel-points-auto.png",
        alt: site.data.images.alt.channel_points.auto %}

### Amount

The "amount" column is the amount of Twitch Toolkit coins when the viewer
redeems the channel point reward. This field can be any amount, but the general
trend is the amount of coins a viewer receives is double what they spent on the
redeem. For example, if a viewer redeems a 5000 channel point reward, the viewer
would be given 10000 coins for use in Twitch Toolkit.

### Auto

The "auto" button
{% icon src: "channel-points-auto.png",
        alt: site.data.images.alt.channel_points.auto %}
will automatically populate the [UUID](#uuid) field for the given entry with the
next channel point redeem redeemed in the channel.

### Enable

The "enable" button
{% icon src: "channel-points-enable.png",
        alt: site.data.images.alt.channel_points.enable %}
determines whether the associated channel point redeem will award viewers with
Toolkit coins when redeemed. This means that if an entry is disabled, but the
redeem on Twitch isn't, viewers will not get coins should they redeem the
associated channel point redeem.

### Delete

The "delete" button
{% icon src: "channel-points-delete.png",
        alt: site.data.images.alt.channel_points.delete %}
will delete the entry, but not the redeem on Twitch. If you do delete a channel
point redeem in the mod's menu, you should also delete the redeem on Twitch to
ensure viewers don't use something that doesn't work.
