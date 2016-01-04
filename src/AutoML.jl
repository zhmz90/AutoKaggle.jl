module AutoML

using XGBoost
using MLBase



include("preprocess/preprocess.jl")
include("feature_engineer/feature_engineer.jl")
include("model/model.jl")
include("evaluation/evalation.jl")

end # module
