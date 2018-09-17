    cranlist <- c("devtools", "tidyverse", "rmarkdown", "knitr", "DT", "data.table", "microbenchmark",
                    "printr", "kableExtra", "gridExtra", "learnr", "plotly", "rpivotTable", "plot3D",
                    "cowplot", "adegraphics", "D3partitionR", "dygraphs", "formattable", "GGally", "threejs",
                    "units", "ggforce", "ggiraphExtra", "radiant", "shinydashboard", "visreg", "flexdashboard", "randomcoloR",
                    "rgl", "shinyRGL", "plot3Drgl", "widgetframe", "leaflet", "httr", "r2d3",
                    "Quandl", "mlbench", "AppliedPredictiveModeling",
                    "class", "knnGarden", "ISLR", "RWeka", "SnowballC", "tm", "wordcloud", "e1071",
                    "gmodels", "evclass", "C50", "caret", "mclust", "tree", "psych",
                    "lmtest", "car", "MASS", "fit.models", "party", "reshape2",
                    "neuralnet", "nnet", "klaR", "kernlab", "svmpath", "arules", "arulesViz",
                    "sqldf", "ks", "fpc", "NbClust", "cluster", "compareGroups", "HDclassif",
                    "corrplot", "FactoMineR", "GPArotation", "factoextra", "nFactors", "ggmap",
                    "ipred", "adabag", "randomForest", "mboost", "pROC", "gbm",
                    "BBmisc", "rebmix", "listviewer", "reactR", "repr", "IRdisplay", "xtable", "egg",
                    "ggExtra", "ggfortify", "autoplotly", "ggExtra", "ggplotify", "h2o", "jsonlite",
                    "wordcloud2", "Hmisc", "data.tree", "stargazer", "rlist", "JuniperKernel",
                    "d3r", "rpart", "rpart.plot", "rattle")


    githublist <- c("lionel-/redpen", "dtkaplan/checkr", "AckerDWM/gg3D")
            

    #mirid <- match("tr", getCRANmirrors()[,8])
    #chooseCRANmirror(graphics=FALSE, ind=mirid)

    ## cran packages
    for (package in cranlist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            install.packages(package)
        }
    }

    ## github packages
    for (package in githublist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            devtools::install_github(package)
        }
    }
#install.packages("radiant", repos = "https://radiant-rstats.github.io/minicran/")

    # install juniper
    JuniperKernel::installJuniper(useJupyterDefault = T)
