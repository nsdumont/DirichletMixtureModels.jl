module DirichletMixtureModels

    using Distributions
    using ConjugatePriors
    using PDMats

    import PDMats: PDMat

    import Distributions:
        Distribution,
        UnivariateDistribution,
        MultivariateDistribution,
        NormalCanon,
        Normal,
        NormalKnownSigma,
        Gamma,
        Exponential,
        MvNormal,
        MvNormalCanon,
        GenericMvTDist,
        MvNormalStats,
        NormalStats,
        logmvgamma,
        suffstats,
        pdf

    import ConjugatePriors:
        NormalGamma,
        NormalWishart,
        rand,
        pdf,
        logpdf,
        posterior_canon

    export
        AbstractMixtureModel,
        ConjugateModel,
        UnivariateConjugateModel,
        MultivariateConjugateModel,
        UnivariateExponentialModel,
        UnivariateNormalKnownSigma,
        UnivariateNormalModel,
        MultivariateNormalModel,
        DMMState,

        dp_cluster,
        summarize,
        pdf_likelihood,
        sample_posterior,
        marginal_likelihood,
        to_string


    include("./package_overrides.jl")
    include("./model.jl")
    include("./models/general_model.jl")
    include("./models/uv_normal.jl")
    include("./models/mv_normal.jl")
    include("./models/uv_exp.jl")
    include("./DMMState.jl")
    include("./DPCluster.jl")

end # module