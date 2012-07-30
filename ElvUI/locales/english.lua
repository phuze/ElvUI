﻿-- English localization file for enUS and enGB.
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L 
if UnitName('player') ~= 'Elvz' and UnitName('player') ~= 'Gronckle' then
	L = AceLocale:NewLocale("ElvUI", "enUS", true, true);
else
	L = AceLocale:NewLocale("ElvUI", "enUS", true);
end

if not L then return; end

--ActionBars
L[" |cff00ff00bound to |r"] = true;
L["Action Paging"] = true;
L["ActionBars"] = true;
L["Anchor Point"] = true; --also in unitframes
L["Backdrop"] = true;
L["Bar "] = true;
L["Binding"] = true;
L["Buttons Per Row"] = true;
L["Buttons"] = true;
L["Color when the text is about to expire"] = true;
L["Color when the text is in the days format."] = true;
L["Color when the text is in the hours format."] = true;
L["Color when the text is in the minutes format."] = true;
L["Color when the text is in the seconds format."] = true;
L["Cooldown Text"] = true;
L["Days"] = true;
L["Discard"] = true;
L["Display bind names on action buttons."] = true;
L["Display cooldown text on anything with the cooldown spiril."] = true;
L["Display macro names on action buttons."] = true;
L["Expiring"] = true;
L["Height Multiplier"] = true;
L["Hours"] = true;
L["Key"] = true;
L["Keybind Mode"] = true;
L["Keybind Text"] = true;
L["KEY_ALT"] = "A"
L["KEY_BUTTON3"] = "M3"
L["KEY_CTRL"] = "C"
L["KEY_DELETE"] = "Del"
L["KEY_HOME"] = "Hm"
L["KEY_INSERT"] = "Ins"
L["KEY_MOUSEBUTTON"] = "M"
L["KEY_MOUSEWHEELDOWN"] = "MwD"
L["KEY_MOUSEWHEELUP"] = "MwU"
L["KEY_NUMPAD"] = "N"
L["KEY_PAGEDOWN"] = "PD"
L["KEY_PAGEUP"] = "PU"
L["KEY_SHIFT"] = "S"
L["KEY_SPACE"] = "SpB"
L["LOCK_AB_ERROR"] = "It has come to our attention that you do not have your actionbars locked. This may cause abilities to be used while dragging buttons to differant slots. Please run the Set CVar portion of the Installation process (Step 2). This can be done by typing /ec and clicking the Install button."
L["Low Threshold"] = true;
L["Macro Text"] = true;
L['Max Paging'] = true;
L["Minutes"] = true;
L["Multiply the backdrops height or width by this value. This is usefull if you wish to have more than one bar behind a backdrop."] = true;
L["No bindings set."] = true;
L["Pet Bar"] = true;
L["Restore Bar"] = true;
L["Restore the actionbars default settings"] = true;
L["Seconds"] = true;
L["Set the font size of the action buttons."] = true;
L["ShapeShift Bar"] = true;
L["The ammount of buttons to display per row."] = true;
L["The ammount of buttons to display."] = true;
L["The first button anchors itself to this point on the bar."] = true;
L["The size of the action buttons."] = true;
L["Threshold before text turns red and is in decimal form. Set to -1 for it to never turn red"] = true;
L["Toggles the display of the actionbars backdrop."] = true;
L["Visibility State"] = true;
L['When enabled the main actionbar will use the maximum amount of pages available. This means if you have another actionbar disabled, the actionbar page will become available on the main actionbar. Having this disabled will limit the main actionbar to two pages.'] = true;
L["Width Multiplier"] = true;
L[ [=[This works like a macro, you can run different situations to get the actionbar to page differently.
 Example: '[combat] 2;']=] ] = true;
L[ [=[This works like a macro, you can run different situations to get the actionbar to show/hide differently.
 Example: '[combat] show;hide']=] ] = true;

--Bags
L["Ascending"] = true;
L["Bag Columns"] = true;
L["Bag-Bar"] = true;
L["Bags"] = true;
L["BAGS_DESC"] = "Adjust bag settings for ElvUI."
L["Bank Columns"] = true;
L["Bar Direction"] = true;
L["Bottom to Top"] = true;
L["Button Size"] = true;
L["Button Spacing"] = true;
L["Click to search.."] = true;
L["copperabbrev"] = "|cffeda55fc|r" --Also used in gold datatext
L["Delete Grays"] = true;
L["Deleted %d gray items. Total Worth: %s"] = true;
L["Descending"] = true;
L["Direction the bag sorting will use to allocate the items."] = true;
L["Enable Bag-Bar"] = true;
L["Enable/Disable the all-in-one bag."] = true;
L["Enable/Disable the Bag-Bar."] = true;
L["goldabbrev"] = "|cffffd700g|r" --Also used in gold datatext
L["Hold Shift:"] = true;
L["Mouse Over"] = true;
L["No gray items to delete."] = true;
L["No gray items to sell."] = true;
L["Number of columns (width) of bags. Set it to 0 to match the width of the chat panels."] = true;
L["Number of columns (width) of the bank. Set it to 0 to match the width of the chat panels."] = true;
L["Purchase"] = true;
L["Set the size of your bag buttons."] = true;
L["silverabbrev"] = "|cffc7c7cfs|r" --Also used in gold datatext
L["Sort Bags"] = true;
L["Sort Direction"] = true;
L["Sort Orientation"] = true;
L["Sort Special"] = true;
L["Stack Items"] = true;
L["Stack Special"] = true;
L["The direction that the bag frames be (Horizontal or Vertical)."] = true;
L["The direction that the bag frames will grow from the anchor."] = true;
L["The frame is not shown unless you mouse over the frame."] = true;
L["The spacing between buttons."] = true;
L["Toggle Bags"] = true;
L["Top to Bottom"] = true;
L["Vendor Grays"] = true;
L["Vendored gray items for:"] = true;
L["X Offset"] = true;
L["Y Offset"] = true;  --Another variation in unitframes yOffset
L["You must be at a vendor."] = true;

--Buffs and Debuffs
L['AURAS_DESC'] = 'Configure the aura icons that appear near the minimap.';
L['Begin a new row or column after this many auras.'] = true;
L['Consolidated Buffs'] = true;
L['Defines how the group is sorted.'] = true;
L['Defines the sort order of the selected sort method.'] = true;
L['Display the consolidated buffs bar.'] = true;
L['Index'] = true;
L['Indicate whether buffs you cast yourself should be separated before or after.'] = true;
L['Limit the number of rows or columns.'] = true;
L['Max Wraps'] = true;
L['Name'] = true;
L['No Sorting'] = true;
L["Other's First"] = true;
L['Seperate'] = true;
L['Set the size of the individual auras.'] = true;
L['Sort Direction'] = true;
L['Sort Method'] = true;
L['Time'] = true;
L['Wrap After'] = true;
L['X Spacing'] = true;
L['Y Spacing'] = true;
L['Your Auras First'] = true;

--Chat
L["Attempt to create URL links inside the chat."] = true;
L["BG"] = true;
L["BGL"] = true;
L["BN:"] = true;
L["Chat Bubbles"] = true;
L["Chat"] = true;
L["CHAT_DESC"] = "Adjust chat settings for ElvUI."
L["Copy Text"] = true;
L["Display the hyperlink tooltip while hovering over a hyperlink."] = true;
L['DND'] = true;
L["Font Outline"] = true; --Also used in UnitFrames section
L["Font"] = true;
L["G"] = true;
L["Hyperlink Hover"] = true;
L["Keyword Alert"] = true;
L['Keywords'] = true;
L['List of words to color in chat if found in a message. If you wish to add multiple words you must seperate the word with a comma. To search for your current name you can use %MYNAME%.\n\nExample:\n%MYNAME%, ElvUI, RBGs, Tank'] = true;
L["Number of time in seconds to scroll down to the bottom of the chat window if you are not scrolled down completely."] = true;
L["O"] = true;
L["P"] = true;
L["PG"] = true;
L["PL"] = true;
L["Prevent the same messages from displaying in chat more than once within this set amount of seconds, set to zero to disable."] = true;
L["R"] = true;
L["RL"] = true;
L["RW"] = true;
L['says'] = true;
L["Scroll Interval"] = true;
L["Set the font outline."] = true; --Also used in UnitFrames section
L["Short Channels"] = true;
L["Shorten the channel names in chat."] = true;
L["Spam Interval"] = true;
L["Sticky Chat"] = true;
L['Trade'] = true;
L["URL Links"] = true;
L["When opening the Chat Editbox to type a message having this option set means it will retain the last channel you spoke in. If this option is turned off opening the Chat Editbox should always default to the SAY channel."] = true;
L["Whisper Alert"] = true;
L['whispers'] = true;
L['yells'] = true;

--Config / Install
L["All keybindings cleared for |cff00ff00%s|r."] = true;
L["Binds Discarded"] = true;
L["Binds Saved"] = true;
L["Caster DPS"] = true;
L["Chat Set"] = true;
L['Choose a theme layout you wish to use for your initial setup.'] = true;
L['Classic Pixel'] = true;
L['Classic'] = true;
L["Click the button below to resize your chat frames, unitframes, and reposition your actionbars."] = true;
L['Config Mode:'] = true;
L["CVars Set"] = true;
L["CVars"] = true;
L["ElvUI Installation"] = true;
L["Finished"] = true;
L["Grid Size:"] = true;
L["Healer"] = true;
L["High Resolution"] = true;
L["high"] = true;
L["Importance: |cff07D400High|r"] = true;
L["Importance: |cffD3CF00Medium|r"] = true;
L["Importance: |cffFF0000Low|r"] = true;
L["Install"] = true;
L["Installation Complete"] = true;
L["Layout Set"] = true;
L["Layout"] = true;
L["Lock"] = true;
L['Low Resolution'] = true;
L["low"] = true;
L["Movers unlocked. Move them now and click Lock when you are done."] = true;
L["One or more of the changes you have made require a ReloadUI."] = true;
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = true;
L["Physical DPS"] = true;
L["Please click the button below so you can setup variables and ReloadUI."] = true;
L["Please click the button below to setup your CVars."] = true;
L["Please press the continue button to go onto the next step."] = true;
L["Resolution Style Set"] = true;
L["Resolution"] = true;
L["Run the installation process."] = true;
L["Setup Chat"] = true;
L["Setup CVars"] = true;
L["Skip Process"] = true;
L["Sticky Frames"] = true;
L["Tank"] = true;
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = true;
L["The in-game configuration menu can be accesses by typing the /ec command or by clicking the 'C' button on the minimap. Press the button below if you wish to skip the installation process."] = true;
L['Theme Set'] = true;
L['Theme Setup'] = true;
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = true;
L["This is completely optional."] = true;
L["This part of the installation process sets up your chat windows names, positions and colors."] = true;
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = true;
L["This resolution doesn't require that you change settings for the UI to fit on your screen."] = true;
L["This resolution requires that you change some settings to get everything to fit on your screen."] = true;
L["This will change the layout of your unitframes, raidframes, and datatexts."] = true;
L["Toggle Anchors"] = true;
L['Toggle Configuration'] = true;
L["Unlock various elements of the UI to be repositioned."] = true;
L["Using the healer layout it is highly recommended you download the addon Clique to work side by side with ElvUI."] = true;
L["Version"] = true;
L["You are now finished with the installation process. Bonus Hint: If you wish to access blizzard micro menu, middle click on the minimap. If you don't have a middle click button then hold down shift and right click the minimap. If you are in need of technical support please visit us at www.tukui.org."] = true;
L['You can always change fonts and colors of any element of elvui from the in-game configuration.'] = true;
L["You can now choose what layout you wish to use based on your combat role."] = true;
L["You may need to further alter these settings depending how low you resolution is."] = true;
L["Your current resolution is %s, this is considered a %s resolution."] = true;

--Credits
L["Coding:"] = true;
L["Donations:"] = true;
L["ELVUI_CREDITS"] = "I would like to give out a special shout out to the following people for helping me maintain this addon with testing and coding and people who also have helped me through donations. Please note for donations I'm only posting the names of people who PM'd me on the forums, if your name is missing and you wish to have your name added please PM me."
L["Testing:"] = true;

--DataTexts
L["(Hold Shift) Memory Usage"] = true;
L["24-Hour Time"] = true;
L["AP"] = true;
L["AVD: "] = true;
L["Avoidance Breakdown"] = true;
L["Bandwidth"] = true;
L['Bases Assaulted'] = true;
L['Bases Defended'] = true;
L['Battleground datatexts temporarily hidden, to show type /bgstats or right click the "C" icon near the minimap.'] = true;
L['Battleground datatexts will now show again if you are inside a battleground.'] = true;
L['Battleground Texts'] = true;
L["Character: "] = true
L["Chest"] = true;
L["DataTexts"] = true;
L["DATATEXT_DESC"] = "Setup the on-screen display of info-texts."
L["Deficit:"] = true;
L['Demolishers Destroyed'] = true;
L["DPS"] = true;
L["Earned:"] = true;
L["Feet"] = true;
L['Flags Captured'] = true;
L['Flags Returned'] = true;
L["Friends List"] = true;
L['Gates Destroyed'] = true;
L['Graveyards Assaulted'] = true;
L['Graveyards Defended'] = true;
L["Hands"] = true;
L["Head"] = true;
L["Hit"] = true;
L["Home Latency:"] = true;
L["HP"] = true;
L["HPS"] = true;
L["If not set to true then the server time will be displayed instead."] = true;
L["left"] = "Left"
L["LeftChatDataPanel"] = "Left Chat"
L["LeftMiniPanel"] = "Minimap Left"
L["Legs"] = true;
L["Local Time"] = true;
L["lvl"] = true;
L["Main Hand"] = true;
L["middle"] = "Middle"
L['Mitigation By Level: '] = true;
L["Offhand"] = true;
L["Panels"] = true;
L["Profit:"] = true;
L["right"] = "Right"
L["RightChatDataPanel"] = "Right Chat"
L["RightMiniPanel"] = "Minimap Right"
L["Saved Raid(s)"] = true;
L["Server: "] = true;
L["Session:"] = true;
L["Shoulder"] = true;
L['Show BG Texts'] = true;
L["SP"] = true;
L["Spent:"] = true;
L['Stats For:'] = true;
L["Toggle 24-hour mode for the time datatext."] = true;
L["Total CPU:"] = true;
L["Total Memory:"] = true;
L["Total: "] = true;
L['Towers Assaulted'] = true;
L['Towers Defended'] = true;
L["Unhittable:"] = true;
L["Waist"] = true;
L['When inside a battleground display personal scoreboard information on the main datatext bars.'] = true;
L["Wrist"] = true;

--DebugTools
L["%s: %s tried to call the protected function '%s'."] = true;
L["INCOMPATIBLE_ADDON"] = "The addon %s is not compatible with ElvUI's %s module. Please disable the incompatible addon or module."
L["No locals to dump"] = true;
L['|cFFE30000Lua error recieved. You can view the error message when you exit combat.'] = true;

--General
L["Accept Invites"] = true;
L["Adjust the size of the minimap."] = true;
L['Always Display'] = true;
L["Announce Interrupts"] = true;
L["Announce when you interrupt a spell to the specified chat channel."] = true;
L["Auto Repair"] = true;
L["Auto Scale"] = true;
L["Automatically accept invites from guild/friends."] = true;
L["Automatically repair using the following method when visiting a merchant."] = true;
L["Automatically scale the User Interface based on your screen resolution"] = true;
L["Automatically vendor gray items when visiting a vendor."] = true;
L["Backdrop color of transparent frames"] = true;
L["Backdrop Color"] = true;
L["Backdrop Faded Color"] = true;
L["Below Minimap"] = true;
L["Border Color"] = true;
L['Change settings for the display of the location text that is on the minimap.'] = true;
L["Change the position of the experience/reputation bar."] = true;
L["CombatText Font"] = true;
L["Controls what the transparency of the worldmap will be set to when you are moving."] = true;
L["Default Font"] = true;
L["Disband Group"] = true;
L['Display emotion icons in chat.'] = true;
L['Display minimap panels below the minimap, used for datatexts.'] = true;
L["Don't scale the large world map to block out sides of the screen."] = true;
L["ELVUI_DESC"] = "ElvUI is a complete User Interface replacement addon for World of Warcraft."
L['Emotion Icons'] = true;
L["Enable/Disable the loot frame."] = true;
L["Enable/Disable the loot roll frame."] = true;
L["Exp/Rep Position"] = true;
L["Font Size"] = true; --Also used in UnitFrames
L["Fonts"] = true;
L["General"] = true;
L["Hide Both"] = true;
L["Left Only"] = true;
L['Location Text'] = true;
L["Log Taints"] = true;
L["Login Message"] = true;
L["LOGIN_MSG"] = "Welcome to %sElvUI|r version %s%s|r, type /ec to access the in-game configuration menu. If you are in need of technical support you can visit us at www.tukui.org. You can report bugs, add suggestions here: http://www.tukui.org/tickets/elvui/."
L["Loot Roll"] = true;
L["Loot"] = true;
L["Main backdrop color of the UI."] = true;
L["Main border color of the UI."] = true;
L["Map Alpha While Moving"] = true;
L["Media"] = true;
L['Minimap Mouseover'] = true;
L['Minimap Panels'] = true;
L["Minimap Size"] = true;
L["Panel Backdrop"] = true;
L["Panel Height"] = true;
L["Panel Texture (Left)"] = true;
L["Panel Texture (Right)"] = true;
L["Panel Width"] = true;
L["PANEL_DESC"] = "Adjust the size of your left and right panels, this will effect your chat and bags."
L["Primary Texture"] = true;
L["Reset all frames to their original positions."] = true;
L["Reset Anchors"] = true;
L["Right Only"] = true;
L["Secondary Texture"] = true;
L["Send ADDON_ACTION_BLOCKED errors to the Lua Error frame. These errors are less important in most cases and will not effect your game performance. Also a lot of these errors cannot be fixed. Please only report these errors if you notice a Defect in gameplay."] = true;
L["Set the font size for everything in UI. Note: This doesn't effect somethings that have their own seperate options (UnitFrame Font, Datatext Font, ect..)"] = true;
L["Show Both"] = true;
L["Textures"] = true;
L["The font that combat text will use. |cffFF0000WARNING: This requires a game restart or re-log for this change to take effect.|r"] = true;
L["The font that the core of the UI will use."] = true;
L["The texture that will be used mainly for statusbars."] = true;
L["This texture will get used on objects like chat windows and dropdown menus."] = true;
L["Tiny Map"] = true;
L["Toggle showing of the left and right chat panels."] = true;
L['Toggle Tutorials'] = true;
L["Top Screen"] = true;
L["Value Color"] = true;
L["Welcome to ElvUI version %s!"] = true;
L[ [=[Specify a filename located inside the World of Warcraft directory. Textures folder that you wish to have set as a panel background.

Please Note:
-The image size recommended is 256x128
-You must do a complete game restart after adding a file to the folder.
-The file type must be tga format.

Example: Interface\AddOns\ElvUI\media\textures\copy

Or for most users it would be easier to simply put a tga file into your WoW folder, then type the name of the file here.]=] ] = true;

--Misc
L["Can't Roll"] = true;
L["Empty Slot"] = true;
L["Enable"] = true; --Doesn't fit a section since it's used a lot of places
L["Experience"] = true;
L["Fishy Loot"] = true;
L["Left Click:"] = true; --layout\layout.lua
L["Raid Menu"] = true;
L["Remaining:"] = true;
L["Rested:"] = true;
L["Right Click:"] = true; --layout\layout.lua
L["Toggle Chat Frame"] = true; --layout\layout.lua
L["Toggle Embedded Addon"] = true; --layout\layout.lua
L["XP:"] = true;
L["You don't have enough money to repair."] = true;
L["You don't have permission to mark targets."] = true;
L["Your items have been repaired for: "] = true;
L["Your items have been repaired using guild bank funds for: "] = true;
L["Your version of ElvUI is out of date. You can download the latest version from www.tukui.org"] = true; --core\core.lua

--NamePlates
L["Add Name"] = true;
L["All"] = true;
L["Auras"] = true;
L["Bad Color"] = true;
L["Bad Scale"] = true;
L["Bad Transition Color"] = true;
L["Castbar Height"] = true;
L['Color the border of the nameplate yellow when it reaches the threshold point on these types of frames.'] = true;
L['Color the border of the nameplate yellow when it reaches this point, it will be colored red when it reaches half this value.'] = true;
L["Color the nameplate's healthbar by your current threat, Example: good threat color is used if your a tank when you have threat, opposite for DPS."] = true;
L["Combat Toggle"] = true;
L["Controls the height of the nameplate"] = true;
L["Controls the height of the nameplate's castbar"] = true;
L["Controls the width of the nameplate"] = true;
L["Custom Color"] = true;
L["Custom Scale"] = true;
L["Disable threat coloring for this plate and use the custom color."] = true;
L["Discipline"] = true;
L["Display a healer icon over known healers inside battlegrounds."] = true;
L["Display level text on nameplate for nameplates that belong to units that aren't your level."] = true;
L["Display your personal debuffs over the nameplate."] = true;
L["Enemy"] = true;
L["Enhance Threat"] = true;
L["Filter already exists!"] = true;
L["Friendly NPC"] = true;
L["Friendly Player"] = true;
L["Good Color"] = true;
L["Good Scale"] = true;
L["Good Transition Color"] = true;
L["Healer Icon"] = true;
L["Hide"] = true;
L["Holy"] = true;
L['Low Health Threshold'] = true;
L['Low Health Warning'] = true;
L["NamePlates"] = true;
L["NAMEPLATE_DESC"] = "Modify the nameplate settings."
L["Personal Debuffs"] = true;
L['Players'] = true;
L["Prevent any nameplate with this unit name from showing."] = true;
L["Remove Name"] = true;
L["Restoration"] = true;
L["Select a filter to use. These are imported from the unitframe aura filter."] = true; --This one is not visible in the GUI since desc is not used on select groups. Keep for dropdown based menus?
L["Set the scale of the nameplate."] = true;
L["This color is displayed when gaining/losing threat, for a tank it would be displayed when gaining threat, for a dps/healer it would be displayed when losing threat"] = true;
L["This color is displayed when gaining/losing threat, for a tank it would be displayed when losing threat, for a dps/healer it would be displayed when gaining threat"] = true;
L["This is displayed when you don't have threat as a tank, if you do have threat it is displayed as a DPS/Healer"] = true;
L["This is displayed when you have threat as a tank, if you don't have threat it is displayed as a DPS/Healer"] = true;
L["Threat"] = true;
L["Toggles the nameplates off when not in combat."] = true;
L["Use this filter."] = true;
L["You can't remove a default name from the filter, disabling the name."] = true;

--Skins
L["Achievement Frame"] = true;
L["Achievement Frame"] = true;
L['Alert Frames'] = true;
L["Archaeology Frame"] = true;
L["Auction Frame"] = true;
L["Barbershop Frame"] = true;
L["BG Map"] = true;
L["BG Score"] = true;
L["Calendar Frame"] = true;
L["Character Frame"] = true;
L["Debug Tools"] = true;
L["Dressing Room"] = true;
L["Embedded Addon"] = true;
L["Embedded Bar Height"] = true;
L["Encounter Journal"] = true;
L["Focus Frame"] = true;
L["FocusTarget Frame"] = true;
L["Friends"] = true;
L["Glyph Frame"] = true;
L["Gossip Frame"] = true;
L["Greeting Frame"] = true;
L["Guild Bank"] = true;
L["Guild Control Frame"] = true;
L["Guild Frame"] = true;
L["Guild Registrar"] = true;
L["Help Frame"] = true;
L["Inspect Frame"] = true;
L["KeyBinding Frame"] = true;
L["LF Guild Frame"] = true;
L["LFG Frame"] = true;
L["Loot Frames"] = true;
L["Macro Frame"] = true;
L["Mail Frame"] = true;
L["Merchant Frame"] = true;
L["Misc Frames"] = true;
L["Mounts & Pets"] = true;
L["Non-Raid Frame"] = true;
L["Pet Battle"] = true;
L["Pet Frame"] = true;
L["Petition Frame"] = true;
L["PvP Frames"] = true;
L["Quest Frames"] = true;
L["Raid Frame"] = true;
L["Reforge Frame"] = true;
L["Select an addon to embed to the right chat window. This will resize the addon to fit perfectly into the chat window, it will also parent it to the chat window so hiding the chat window will also hide the addon."] = true;
L["Skin the blizzard chat bubbles."] = true;
L["Skins"] = true;
L["SKINS_DESC"] = "Adjust Skin settings."
L["Socket Frame"] = true;
L['Spacing'] = true;
L["Spellbook"] = true;
L["Stable"] = true;
L["Tabard Frame"] = true;
L["Talent Frame"] = true;
L["Taxi Frame"] = true;
L["The height of the bars while skada is embedded."] = true;
L['The spacing in between bars.'] = true;
L["Time Manager"] = true;
L["TOGGLESKIN_DESC"] = "Enable/Disable this skin."
L["Trade Frame"] = true;
L["TradeSkill Frame"] = true;
L["Trainer Frame"] = true;
L["World Map"] = true;

--Static Popups
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = true;
L["Are you sure you want to delete all your gray items?"] = true;
L["Are you sure you want to disband the group?"] = true;
L["Are you sure you want to reset every mover back to it's default position?"] = true;
L["Can't buy anymore slots!"] = true;
L["Hover your mouse over any actionbutton or spellbook button to bind it. Press the escape key or right click to clear the current actionbutton's keybinding."] = true;
L["Save"] = true;
L["You have changed your UIScale, however you still have the AutoScale option enabled in ElvUI. Press accept if you would like to disable the Auto Scale option."] = true;
L["You must purchase a bank slot first!"] = true;

--Tooltip
L["AFK"] = true; --Also in chat as L['DND']
L["Anchor Mode"] = true;
L["Anchor"] = true;
L["Combat Hide"] = true;
L["Count"] = true;
L["Cursor"] = true;
L["Don't display the tooltip when mousing over a unitframe."] = true;
L["Hide tooltip while in combat."] = true;
L["Set the type of anchor mode the tooltip should use."] = true;
L["Smart"] = true;
L["Targeted By:"] = true;
L["Tooltip"] = true;
L["TOOLTIP_DESC"] = "Setup options for the Tooltip."
L["UF Hide"] = true;
L["When in a raid group display if anyone in your raid is targetting the current tooltip unit."] = true;
L["Who's targetting who?"] = true;

--Tutorials
L['A raid marker feature is available by pressing Escape -> Keybinds scroll to the bottom under ElvUI and setting a keybind for the raid marker.'] = true;
L['ElvUI has a dual spec feature which allows you to load different profiles based on your current spec on the fly. You can enable this from the profiles tab.'] = true;
L['For technical support visit us at www.tukui.org.'] = true;
L['If you accidently remove a chat frame you can always go the in-game configuration menu, press install, go to the chat portion and reset them.'] = true
L['If you are experiencing issues with ElvUI try disabling all your addons except ElvUI, remember ElvUI is a full UI replacement addon, you cannot run two addons that do the same thing.'] = true;
L['If you need to reset the gold datatext type /resetgold.'] = true;
L['If your experience and reputation bars disappear, mouse over the place where they were and click them again.'] = true;
L['The buff panel to the right of minimap is a list of your consolidated buffs. You can disable it in Buffs and Debuffs options of ElvUI.'] = true;
L['The focus unit can be set by typing /focus when you are targetting the unit you want to focus. It is recommended you make a macro to do this.'] = true;
L['To move abilities on the actionbars by default hold shift + drag. You can change the modifier key from the blizzard actionbar options menu.'] = true;
L['To setup which channels appear in which chat frame, right click the chat tab and go to settings.'] = true;
L['Using the /farmmode <size> command will spawn a larger minimap on your screen that can be moved around, very useful when farming.'] = true;
L['You can access copy chat and chat menu functions by mouse over the top right corner of chat panel and left/right click on the button that will appear.'] = true;
L['You can set your keybinds quickly by typing /kb.'] = true;
L['You can toggle the microbar by using your middle mouse button on the minimap you can also accomplish this by holding shift and right clicking on the minimap.'] = true;
L['You can use the /resetui command to reset all of your movers. You can also use the command to reset a specific mover, /resetui <mover name>.\nExample: /resetui Player Frame'] = true;

--UnitFrames
L["%s frame(s) has a conflicting anchor point, please change either the buff or debuff anchor point so they are not attached to each other. Forcing the debuffs to be attached to the main unitframe until fixed."] = true;
L['Above'] = true;
L["Add a spell to the filter."] = true;
L["Add Spell"] = true;
L["Add SpellID"] = true;
L['Allow displaying of auras that are considered consolidated by Blizzard.'] = true;
L['Allow displaying of auras that do not have a duration.'] = true;
L["Alt-Power"] = true; --Not in beta but is in live version
L["An X offset (in pixels) to be used when anchoring new frames."] = true;
L["An Y offset (in pixels) to be used when anchoring new frames."] = true;
L['Anchor To'] = true;
L["Any Unit"] = true;
L["Arena Frames"] = true;
L["Assist Frames"] = true;
L["Attach To"] = true;
L['Aura Bars'] = true;
L["Bad"] = true;
L["Bars will transition smoothly."] = true;
L['Bars'] = true; --Also used in ExpRepBar tooltip
L['Below'] = true;
L["Blacklist"] = true;
L["Blank"] = true;
L["Boss Frames"] = true;
L["Buff Indicator"] = true;
L["Buffs"] = true;
L["Camera Distance Scale"] = true;
L["Castbar"] = true;
L["Class Backdrop"] = true;
L["Class Health"] = true;
L['Class Names'] = true;
L["Class Power"] = true;
L["Classbar"] = true;
L["Color health by ammount remaining."] = true;
L["Color health by classcolor or reaction."] = true;
L["Color Icons"] = true;
L["Color power by classcolor or reaction."] = true;
L["Color some texts use."] = true;
L["Color the health backdrop by class or reaction."] = true;
L["Color the icon to their set color in the filters section, otherwise use the icon texture."] = true;
L['Color the name text by class or reaction.'] = true;
L["Color the unit healthbar if there is a debuff that can be dispelled by you."] = true;
L["Color"] = true;
L["Colors"] = true;
L["Column Point"] = true;
L["Column Spacing"] = true;
L["Combat Fade"] = true;
L["Combobar"] = true;
L["Copy From"] = true;
L["Create a filter, once created a filter can be set inside the buffs/debuffs section of each unit."] = true;
L["Create Filter"] = true;
L["Credits"] = true;
L["Current - Max"] = true;
L["Current - Percent"] = true;
L["Current / Max"] = true;
L["Current"] = true;
L["Custom Health Backdrop"] = true;
L["Debuff Highlighting"] = true;
L["Debuffs"] = true;
L["Deficit"] = true;
L["Delete a created filter, you cannot delete pre-existing filters, only custom ones."] = true;
L["Delete Filter"] = true;
L["Direction the health bar moves when gaining/losing health."] = true;
L['Disabled'] = true;
L["Disable Blizzard"] = true;
L["Disables the blizzard party/raid frames."] = true;
L["Disconnected"] = true;
L["Display a spark texture at the end of the castbar statusbar to help show the differance between castbar and backdrop."] = true;
L['Display Frames'] = true;
L["Display Player"] = true;
L["Display Target"] = true;
L["Display the rested icon on the unitframe."] = true;
L["Display the target of the cast on the castbar."] = true;
L["Display tick marks on the castbar for channelled spells. This will adjust automatically for spells like Drain Soul and add additional ticks based on haste."] = true;
L["Down"] = true;
L["Fade the unitframe when out of combat, not casting, no target exists."] = true;
L["Fill"] = true;
L["Filled"] = true;
L["Filter Type"] = true;
L["Filters"] = true;
L['Force the frames to show, they will act as if they are the player frame.'] = true;
L["Format"] = true;
L["Frame"] = true;
L["Frequent Updates"] = true;
L['Friendlies: Show Buffs'] = true;
L['Friendlies: Show Debuffs'] = true;
L["Ghost"] = true;
L["Good"] = true;
L["Group By"] = true;
L["Group Point"] = true;
L["Heal Prediction"] = true;
L["Health Backdrop"] = true;
L["Health By Value"] = true;
L["Health Text"] = true;
L["Health"] = true;
L["Height"] = true;
L['Hold shift + right click to blacklist this aura.'] = true;
L["Horizontal"] = true; --Also used in bags module
L["How far away the portrait is from the camera."] = true;
L["Icon"] = true;
L['If not set to 0 then override the size of the aura icon to this.'] = true;
L['If set only auras belonging to yourself in addition to any aura that passes the set filter may be shown. Note: You can change between only doing this on friendly or enemy units.'] = true;
L['If set then if the aura is found on the blacklist filter it will not display. Note: You can change between only doing this on friendly or enemy units.'] = true;
L['If set then if the aura is found on the whitelist filter it will display. Note: You can change between only doing this on friendly or enemy units.'] = true;
L["Interrupt Color"] = true;
L["Latency"] = true;
L["Length"] = true;
L["Long (Include Level)"] = true;
L["Long"] = true;
L["Low Mana Threshold"] = true;
L["Main statusbar texture."] = true;
L["Match Frame Width"] = true;
L["Max Columns"] = true;
L["Medium"] = true;
L["MT, MA First"] = true;
L["Name"] = true;
L["Neutral"] = true;
L['No Consolidated'] = true;
L['No Duration'] = true;
L["None"] = true; --Also used in chat
L["Not valid spell id"] = true;
L["Num Rows"] = true;
L["Offline"] = true;
L["Offset of the powerbar to the healthbar, set to 0 to disable."] = true;
L["Offset"] = true;
L["OOR Alpha"] = true;
L["Orientation"] = true;
L["Overlay the healthbar"] = true;
L["Overlay"] = true;
L["Override any custom visibility setting in certain situations, EX: Only show groups 1 and 2 inside a 10 man instance."] = true;
L["Party Frames"] = true;
L["Party Pets"] = true;
L["Party Targets"] = true;
L["Per Row"] = true;
L["Percent"] = true;
L["Personal Auras"] = true;
L["PetTarget Frame"] = true;
L["Player Frame"] = true;
L["Portrait"] = true;
L["Position"] = true;
L["Power text will be hidden on NPC targets, in addition the name text will be repositioned to the power texts anchor point."] = true;
L["Power"] = true;
L["Powers"] = true;
L["Priority"] = true;
L['Raid-10 Frames'] = true;
L['Raid-25 Frames'] = true;
L['Raid-40 Frames'] = true;
L["RaidDebuff Indicator"] = true;
L["Rapidly update the health, uses more memory and cpu. Only recommended for healing."] = true;
L["Reactions"] = true;
L["Remaining"] = true;
L["Remove a spell from the filter."] = true;
L["Remove Spell"] = true;
L["Remove SpellID"] = true;
L["Rest Icon"] = true;
L["Restore Defaults"] = true; --Also used in General and ActionBars sections
L['RL / ML Icons'] = true;
L["Role Icon"] = true;
L["Select a filter to use."] = true; --Also used in NamePlates
L["Select a unit to copy settings from."] = true;
L["Select Filter"] = true;
L["Select Spell"] = true;
L["Set the filter type, blacklisted filters hide any aura on the like and show all else, whitelisted filters show any aura on the filter and hide all else."] = true;
L["Set the font size for unitframes."] = true;
L["Set the order that the group will sort."] = true;
L["Set the priority order of the spell, please note that prioritys are only used for the raid debuff module, not the standard buff/debuff module. If you want to disable set to zero."] = true;
L["Short"] = true;
L["Show a incomming heal prediction bar on the unitframe. Also display a slightly different colored bar for incoming overheals."] = true;
L['Show Auras'] = true;
L["Show Party"] = true;
L["Show Raid"] = true;
L["Show Solo"] = true;
L["Size of the indicator icon."] = true;
L['Size Override'] = true;
L["Size"] = true;
L['Smart Auras'] = true;
L["Smart Raid Filter"] = true;
L["Smooth Bars"] = true;
L["Spaced"] = true;
L["Spark"] = true;
L["Spell not found in list."] = true;
L["StatusBar Texture"] = true;
L["Tank Frames"] = true;
L["Tapped"] = true;
L["Target Frame"] = true;
L["TargetTarget Frame"] = true;
L["Text Format"] = true;
L["Text Toggle On NPC"] = true;
L["Text"] = true;
L["The alpha to set units that are out of range to."] = true;
L["The amount of space (in pixels) between the columns."] = true;
L["The anchor point for each new column. A value of LEFT will cause the columns to grow to the right."] = true;
L["The following macro must be true in order for the group to be shown, in addition to any filter that may already be set."] = true;
L["The font that the unitframes will use."] = true;
L["The maximum number of columns that the header will create."] = true;
L["The maximum number of units that will be displayed in a single column."] = true;
L['The object you want to attach to.'] = true;
L['The point of which you are anchoring to in relation to the attach to object.'] = true;
L['The spell "%s" has been added to the Blacklist unitframe aura filter.'] = true;
L["Ticks"] = true;
L["Toggles health text display"] = true;
L["UnitFrames"] = true;
L["Units Per Column"] = true;
L["Up"] = true;
L['Use Blacklist'] = true;
L["Use Filter"] = true;
L['Use Whitelist'] = true;
L["Use the custom health backdrop color instead of a multiple of the main health color."] = true;
L["Value must be a number"] = true;
L["Vertical"] = true; --Also used in bags section
L["Visibility"] = true;
L["What each frame should attach itself to, example setting it to TOP every unit will attach its top to the last point bottom."] = true;
L["What point to anchor to the frame you set to attach to."] = true;
L["What to attach the buff anchor frame to."] = true;
L['When set the Buffs and Debuffs will toggle being displayed depending on if the unit is friendly or an enemy. This will not effect the aurabars module.'] = true;
L["When true, the group header is shown when the player is in a party."] = true;
L["When true, the group header is shown when the player is in a raid."] = true;
L["When true, the header includes the player when not in a raid."] = true;
L["When true, the header is shown when the player is not in any group."] = true;
L["When you mana falls below this point, text will flash on the player frame."] = true;
L["Whitelist"] = true;
L["Width"] = true; --Also used in NamePlates module
L["xOffset"] = true;
L["Y-Growth"] = true;
L["yOffset"] = true; --Another variation in bags section Y Offset
L["You can't remove a pre-existing filter."] = true;
L["You cannot copy settings from the same unit."] = true;
L["You cannot set the Group Point and Column Point so they are opposite of each other."] = true;
L["You may not remove a spell from a default filter that is not customly added. Setting spell to false instead."] = true;