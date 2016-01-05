
@doc """ multi-class logarithmic loss
""" ->
function mlogloss{T<:AbstractFloat}(pd::Array{T,2},gt::Array{T,2})
    # T can't be Real since raised an integer x to a negative power -n.
    function max_min(x::T)
        max(min(x,1-10.0^(-15)),10^(-15))
    end
    pd = map(max_min, pd)
    log_pd = log(pd)
    -sum(sum(gt .* log_pd, 1))
end
