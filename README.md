![Project Sloth GitHub Project PS-SIGNROBBERY Banner](https://user-images.githubusercontent.com/91661118/170381274-38fdbeda-a6a8-454f-b797-b13b9015ed13.png)

### ps-signrobbery
A unique script that gives you the ability to pick up, hold and steal signs around the map while also being able to trade them for materials.

![Project Sloth Buttons 2](https://user-images.githubusercontent.com/91661118/170381303-087fbd96-dc8a-4048-9716-e5ad7637d3ee.png)

### Dependencies:
* [qb-target](https://github.com/BerkieBb/qb-target)
* [ps-ui](https://github.com/Project-Sloth/ps-ui)
* [dpemotes](https://github.com/andristum/dpemotes)

<br>
<br>

![Project Sloth GitHub Project PS-SIGNROBBERY Install Banner](https://user-images.githubusercontent.com/91661118/170381451-f899a24a-a313-4197-8c68-06ada7931a1b.png)


### Start installing now
We will now provide you with a step-by-step guide for the installation process. Shouldn't take too long and it shouldn't be too confusing either! 

### Step 1:
Go ahead and start by dragging and dropping ps-signrobbery into your designated resources folder.

If you are still lost, Slothy has created a few GIF's to help guide you through all the installation steps.

![explorer_EWoAC8jVyC](https://user-images.githubusercontent.com/91661118/170382891-7a0433c5-bfcd-4d9c-bfdc-48f002aeec74.gif)


### Step 2:
Open the ps-signrobbery resource you just implemented in your resources folder and navigate to **ps-signrobbery/images** then copy those images inside **qb-inventory/html/images**

![explorer_Vp8W2zuheK](https://user-images.githubusercontent.com/91661118/170383180-d7ee5b03-0495-4076-8db4-b482a31ad141.gif)

### Step 3: 
Open your entire resources folder with Visual Studio Code (or whichever program you use) and navigate to **qb-core/shared/items.lua**

```lua
["stopsign"] = {["name"] = "stopsign", ["label"] = "Stop Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "stopsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Stop Sign"},
["walkingmansign"] = {["name"] = "walkingmansign", ["label"] = "Pedestrian Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "walkingmansign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Pedestrian Sign"},
["dontblockintersectionsign"] = {["name"] = "dontblockintersectionsign", ["label"] = "Intersection Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "dontblockintersectionsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Intersection Sign"},
["uturnsign"] = {["name"] = "uturnsign", ["label"] = "U Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "uturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "U Turn Sign"},
["noparkingsign"] = {["name"] = "noparkingsign", ["label"] = "No Parking Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "noparkingsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "No Parking Sign"},
["leftturnsign"] = {["name"] = "leftturnsign", ["label"] = "Left Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "leftturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Left Turn Sign"},
["rightturnsign"] = {["name"] = "rightturnsign", ["label"] = "Right Turn Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "rightturnsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Right Turn Sign"},
["notrespassingsign"] = {["name"] = "notrespassingsign", ["label"] = "No Trespassing Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "notrespassingsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "No Trespassing Sign"},
["yieldsign"] = {["name"] = "yieldsign", ["label"] = "Yield Sign", ["weight"] = 1, ["type"] = "item", ["image"] = "yieldsign.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Yield Sign"},
```

Then copy this snippet above and paste it at the very bottom of file as shown in the GIF

![Code_xLLPuFXZuK](https://user-images.githubusercontent.com/91661118/170383607-9ed085c2-e6d6-40a1-9f03-71f025eb3476.gif)


<br>
<br>

![Project Sloth GitHub Project PS-SIGNROBBERY Features Banner](https://user-images.githubusercontent.com/91661118/170384824-5b45be83-e7e0-4d0d-bfca-d3145b13a19a.png)


#### Some features to mention within this ps-signrobbery:
* Steal signs found around the map
* Hold signs and use them as an emote
* Trade signs for materials in return

<br>
<br>

![Project Sloth GitHub Project PS-SIGNROBBERY Showcase Banner](https://user-images.githubusercontent.com/91661118/170385405-454dcad3-c4c7-441a-b532-bd5442bc91e9.png)


### Time to show you what it looks like!
Here's a few showcased examples while using ps-signrobbery.

#### Steal signs:
![68747470733a2f2f692e696d6775722e636f6d2f5641555a484e442e6a7067](https://user-images.githubusercontent.com/91661118/170385069-6accb747-f1a6-433e-a0f3-4ff61c20fcdc.png)

#### Hold signs:
![68747470733a2f2f692e696d6775722e636f6d2f6d4266335675702e6a7067](https://user-images.githubusercontent.com/91661118/170385102-f9258aaa-5a39-4a6c-81ca-02835a02e70f.png)

#### Minigame for stealing signs:
![68747470733a2f2f692e696d6775722e636f6d2f7a324a744a507a2e6a7067](https://user-images.githubusercontent.com/91661118/170385143-01a810d1-3800-49ab-94e6-0f3ca8275b95.png)

### Credits:
Huge thanks to [Hyper](https://github.com/itsHyper) and [Snipe (pushkart2)](https://github.com/pushkart2) This release wouldn't be possible without them.
