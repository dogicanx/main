local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/dogicanx/main/main/lib.lua"))()

local Main = library:CreateWindow("Main","Deep Sea")

local tab = Main:CreateTab("autofarm")
local tab2 = Main:CreateTab("autobuy")
local tab3 = Main:CreateTab("local player")
local tab4 = Main:CreateTab("misc")
local tab5 = Main:CreateTab("credits")

tab:CreateButton("button",function()
print("clicked")
end)

tab:CreateToggle("toggle",function(a)
print(a)
end)

tab:CreateSlider("Slider",1,16,function(a)
print(a)
end)

tab:CreateCheckbox("toggle",function(a)
print(a)
end)

tab:CreateDropdown("like",{"do","stupid","shit"},function(a)
print(a)
end)

tab2:CreateButton("Hello",function()
print("clicked")
end)

tab:Show()
