CB <- function(data) {
    codebook <- data.frame(
        row.names = NULL,
        column = names(data),
        range = sapply(data, function(x)
            if (class(x) == "factor")
                paste(levels(x), collapse = " , ")
            else if (class(x) == "numeric" ||
                     class(x) == "integer")
                paste(round(min(x), digits = 4), round(max(x), digits = 4), sep = "  to  ")
            else
                class(x)),
        mean = sapply(data, function(x)
            if (class(x) == "numeric")
                round(mean(x), digits = 4)
            else
                "Not applicable")
    )
    write.csv(codebook, "codeBook.csv")
}