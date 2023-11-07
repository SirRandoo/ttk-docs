---
title: Item Store
layout: default
parent: Stores
grand_parent: Setting Up Twitch Toolkit
---

# Setting Up the Item Store

## Locating the Item Store

You can find the item store by going to the settings for
{{ site.data.mods.ttk.name }}, then clicking the "Store" tab. You'll then be
able to click the "Open" button beside "Items Edit" text. You'll be shown a menu
like this:

{% image src: "ttk-item-store.png", alt: "Item Store Menu" %}

You'll notice there are numbers scattered throughout the image above. Those
numbers correspond to a the ones below, which will explain what that part of the
menu does.

1. This is where you can search for specific items.
2. When "category search" is enabled, the search bar will instead search through
item categories instead of their names.
3. This button opens up the [filter menu](#using-the-filter-menu) where you can
filter items. Filtering does not affect the search bar in any way, so you
can search *and* filter at the same time!
4. This column is whether the item is purchasable for viewers.
5. This column is where the item's name is displayed. If you're in-game you can
click this column to open the information menu about the item. The
"information menu" is the menu that opens when you click the
{% mono i %} button in certain menus, like the little menu that pops up on
the bottom-left when you have an item selected.
6. This column is where the item's current price is displayed. You can adjust
the price of the item by typing in any number in the number field, or by
using the buttons beside the field. The buttons will adjust how much they
adjust the price by holding various "modifier" keys, like shift, alt, and
control -- you can even hold down multiple modifier keys for even more
adjustments!
7. This column is where the item's category is displayed.
8. This column is where the you can expand or collapse extended settings that
didn't quite fit into the menu. Some of these settings will only appear on
certain items, but you can usually find the same 3 settings in most cases.
9. The "reset all" button resets all **visible** items to their default values.
10. The pencil button allows you to change the name of the item. Changing the
name means that viewers have to use the new name in order to purchase the
item.

## Using the Filter Menu

The filter menu for the item store allows you to filter what's visible within
the item store. You can access the filter menu by clicking the
{% icon src: "item-store-filter.png" %} icon by the search box in the top-left
corner of the menu. The filter menu should look something like:

{% image src: "ttk-item-store-filter.png" %}

## Expanded Settings

There are various settings that were introduced over the years. Below is a brief
summary of each of the settings in the expanded menu, and what they do for the
overall mod. For more information about the settings you can read the relevant
documentation for the purchase system that governs the setting. The expanded
menu should look something like:

{% image src: "ttk-item-store-expanded.png" %}

### Karma Type

The karma type setting can be used to change the
[karma type]({{ "/setup/twitch-toolkit/karma" }}) of the purchase. Changing the
karma type for a given purchase will affect how much a viewer's karma will
increase or decrease. For more information about the karma system, and how it
affects viewers, you can read the relevant documentation for it
[here]({{ "/setup/twitch-toolkit/karma" }}).

Other variants of this setting can be found in items that match certain
conditions. When these conditions are met, a new setting unique to a specific
*type* of purchase will be visible. Below are a list of those conditions and the
setting that becomes visible when said condition is met:

|-------------|--------------------------|
| Condition   | Setting                  |
|:------------|:-------------------------|
| Apparel     | Karma type for wearing   |
|-------------+--------------------------|
| Consumables | Karma type for using     |
|-------------+--------------------------|
| Weapons     | Karma type for equipping |
|-------------+--------------------------|

### Purchase Weight

The purchase weight setting can be used to change how much a single item weights
in regards to karma calculations. An item with a higher weight will more
drastically affect a viewer's karma when bought, while an item with a lower
weight will less drastically affect a viewer's karma when bought. For more
information about the karma system, and how it affects viewers, you can read the
relevant documentation for it [here]({{ "/setup/twitch-toolkit/karma" }}).

### Quantity Limit

The quantity limit setting can be used to change how many items a viewer can buy
at once. Any purchase made with a quantity higher than the limit will still
succeed, but with the quantity lowered to the limit. This means that if an item
has a limit of 30, and a viewer wants to purchase 90, the purchase will succeed
and they will only purchase 30.

{: .important}
As this setting directly affects how many items a viewer can buy, it can clash
with the minimum amount of coins a viewer has to spend in order to purchase
anything from the store. If the minimum amount is 50 coins, and an item that
costs 49 coins has a quantity limit of 1, viewers will not be able to purchase
said item until one of the two settings are adjusted to compensate for the
other.
