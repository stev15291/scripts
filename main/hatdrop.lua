local Character = game.Players.LocalPlayer.Character
Character.HumanoidRootPart:Destroy()
Character.Torso:Destroy()
Character.Humanoid.Parent = game.Players.LocalPlayer
local Fake = Character["Body Colors"]:Clone()
Character["Body Colors"]:Destroy()
Fake.Parent = Character
-- Modded "Lego's" Hat Drop.
