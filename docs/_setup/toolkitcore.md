---
title: Setting Up ToolkitCore
layout: default
---

# Setting Up {{ site.data.mods.core.name }}

Setting up {{ site.data.mods.core.name }} is fairly straightforward. The first
thing you'll need to do is navigate to {{ site.data.mods.core.name }}'s settings
menu. It should look something like this:

{% assign alt = site.data.mods.core.name | append: "'s settings menu" | escape %}
{% image src: "toolkitcore-settings.png", alt: alt %}

The first thing you might've noticed is that the settings menu is broken up into
two different sections: Channel details, and connection. These sections are
explained further in their relevant section below.

## Channel Details

This section is used to tell the mod which account to connect to Twitch with,
and which channel to listen for chat messages. There are a total of 3 different
text fields you need to fill out to get the mod connected to Twitch:

{: .important}
While you may use any account you want, you can only use an account you can log
into on the Twitch website with. This means that you cannot use accounts like
nightbot, streamelements, streamlabs, moobot, etc..

1. Bot username
2. OAuth token
3. Channel

### Bot Username

This text field is where you would put the username of the account on Twitch.
While this field is somewhat unimportant since Twitch uses the username
associated with the OAuth token, it's still a good idea to put something here as
other parts of the mod may use this field to display certain information.

{: .important}
Earlier version of Twitch Toolkit supported using links as a username, but the
current version of Twitch Toolkit does **not**. You will have to put in the
username of the account the token was generated for, or the mod will not work
properly if at all.

### OAuth Token

This text field is the important bit that allows the mod to connect to Twitch.
You can click the "New OAuth token" button near the field if you don't already
have one. You can either manually paste it into the text field by clicking the
"Show" button, or you can have the mod fill in the field from your clipboard by
clicking the "Paste from clipboard" button.

{: .important}
Clicking the "New OAuth Token" will take you to a convenient website that will
generate a token for the Twitch account you're **currently** logged into. This
website isn't affiliated with Twitch Toolkit, or its developers, and only serves
as a user-friendly way of creating a token. In the end you should have a bunch
of nonsensical text that starts with {% mono oauth: %}, which you should paste
into the mod's settings menu (including the {% mono oauth: %} portion).

### Channel

This text field is where you'll type in the username of the channel you want the
bot to listen to. You can put any channel you own, or otherwise have permission
to use for the bot.

{: .important}
Earlier version of Twitch Toolkit supported using links as a channel, but the
current version of Twitch Toolkit does **not**. You will have to put in the
username of the channel you're trying to get the mod to use, or the mod will not
work properly if at all.

## Connection

Settings in this section affect how the bot reads chat messages, whether to
connect on startup, and whether to send a connection message. The latter two are
self-explanatory and won't be covered in this documentation. The important
settings are the whisper settings:

- Allow viewers to whisper
- Force viewers to whisper

The first setting ("Allow viewers to whisper") determines whether the bot will
also read any messages whispered to it. This means that any command whispered to
the bot will also run the code associated with said command. However this does
not mean the bot will respond to a whisper as a whisper message. Whispering
users on Twitch is heavily limited and only allows for a certain number of
unique users to be whispered within a given day. For the exact number of users,
you can review the documentation for whispering
[here](https://dev.twitch.tv/docs/api/reference/#send-whisper).

The second setting ("Force viewers to whisper") determines whether the bot will
**only** handle messages sent through whispers. With this setting on no messages
sent through the channel's chat will be processed.

{: .important}
If viewers are forced to whisper, but whispers aren't enabled in the bot's
settings, viewers will not be able to use any commands. This means that you need
both settings enabled if you want to force viewers to whisper the bot.
