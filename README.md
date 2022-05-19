
# qb-signrobbery
Sign Robbery for QBCore

# Dependencies 

- [qb-target](https://github.com/BerkieBb/qb-target)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [qb-lock](https://github.com/Tex27/qb-lock)

# Installation
* Download ZIP
* Drag and drop resource into your resources folder.
* Start resource
* Add Images into your inventory script
* Add Items into QBCore Shared lua

# qb-core / shared / items.lua
```lua
	["stopsign"] 				     = {["name"] = "stopsign", 				        ["label"] = "Stop Sign", 			        ["weight"] = 1, 		["type"] = "item", 		["image"] = "stopsign.png", 		        	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Stop Sign"},
	["walkingmansign"] 				 = {["name"] = "walkingmansign", 				["label"] = "Pedestrian Sign", 			    ["weight"] = 1, 		["type"] = "item", 		["image"] = "walkingmansign.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Pedestrian Sign"},
	["dontblockintersectionsign"] 	 = {["name"] = "dontblockintersectionsign", 	["label"] = "Intersection Sign", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "dontblockintersectionsign.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Interdect Sign"},
	["uturnsign"] 				     = {["name"] = "uturnsign", 				    ["label"] = "U Turn Sign", 			        ["weight"] = 1, 		["type"] = "item", 		["image"] = "uturnsign.png", 		        	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "U Turn Sign"},

```

# dp emotes / client / AnimationList.lua
```lua
   ["stopsign"] = {"amb@world_human_janitor@male@base", "base", "Stop Sign", AnimationOptions =
   {
       Prop = "prop_sign_road_01a",
       PropBone = 57005,
       PropPlacement = {0.10, -1.0, 0.0, -90.0, -250.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["walkingmansign"] = {"amb@world_human_janitor@male@base", "base", "Walking Man Sign", AnimationOptions =
   {
       Prop = "prop_sign_road_05a",
       PropBone = 57005,
       PropPlacement = {0.10, -1.0, 0.0, -90.0, -250.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["dontblockintersectionsign"] = {"amb@world_human_janitor@male@base", "base", "Intersection Sign", AnimationOptions =
   {
       Prop = "prop_sign_road_03e",
       PropBone = 57005,
       PropPlacement = {0.10, -1.0, 0.0, -90.0, -250.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["uturnsign"] = {"amb@world_human_janitor@male@base", "base", "U Turn Sign", AnimationOptions =
   {
       Prop = "prop_sign_road_03m",
       PropBone = 57005,
       PropPlacement = {0.10, -1.0, 0.0, -90.0, -250.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
```
# Credits
* [Hyper](https://github.com/itsHyper)
* [Snipe](https://github.com/pushkart2)

