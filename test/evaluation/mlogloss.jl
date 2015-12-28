
# test mlogloss
let pd = [0 0 0 1;1 0 0 0], gt = [0 0 0 1;1 0 0 0]

    @test mlogloss(pd,gt) = 1

end
