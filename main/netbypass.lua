
getgenv().NetworkPhysics = true
local function Network(Time)
    local RunService = game:GetService("RunService")
    local Timer = Time or 0.01
    local LoopCheck
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    LoopCheck = RunService.RenderStepped:Connect(function(Timer)
        sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", 1000^math.pow(1e9,1e9))
        setsimulationradius(1000)
        if getgenv().NetworkPhysics == true then
            -- Credits ProductionTakeOne For This!
            settings().Rendering.EagerBulkExecution = true
            settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
            settings().Physics.AllowSleep = false
            settings().Physics.ForceCSGv2 = false
            settings().Physics.DisableCSGv2 = true
            settings().Physics.UseCSGv2 = false
            settings().Physics.ThrottleAdjustTime = math.huge
            workspace.InterpolationThrottling = "Disabled"
            workspace.FallenPartsDestroyHeight = 0
        end
    end)
end
Network(0.01)
