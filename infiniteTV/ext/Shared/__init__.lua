Events:Subscribe('Partition:Loaded', function(partition)
    for _, instance in pairs(partition.instances) do
        if instance.instanceGuid == Guid('D19A7398-0024-4FE0-81FB-7530CA0A353D') then
            local TVEntityData = VehicleProjectileEntityData(instance)
            TVEntityData:MakeWritable()
            TVEntityData.timeToLive = 99999
            TVEntityData.initialSpeed = 9999
            print("done")
        end
        if instance.instanceGuid == Guid('FB76B45F-3242-49A4-A891-912DA7399753') then
            local TVOtherData = FilmGrainComponentData(instance)
            TVOtherData:MakeWritable()
            TVOtherData.enable = false
            print("done2")
        end
        if instance.instanceGuid == Guid('0A8E6BDC-1603-4CD6-8E89-31AA53E30B91') then
            local TVVignette = VignetteComponentData(instance)
            TVVignette:MakeWritable()
            TVVignette.opacity = 0.001
            TVVignette.enable = true
            print("done3")
        end

        if instance.instanceGuid == Guid('A47901BE-816E-4CEB-A653-71947C3DC31D') then
            local TVTry = VisualEnvironmentEntityData(instance)
            TVTry:MakeWritable()
            TVTry.visibility = 0.1
            print("done4")
        end

        if instance.instanceGuid == Guid('9F460A6E-63F0-4696-B35D-2928ADF428B5') then
            local TVNew = ColorCorrectionComponentData(instance)
            TVNew:MakeWritable()
            TVNew.enable = false
            TVNew.brightness = Vec3(1,1,1)
            TVNew.contrast = Vec3(1,1,1)
            TVNew.saturation = Vec3(0.2,0.2,0.2)
            print("done5")
        end
    end
end)