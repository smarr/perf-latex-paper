benchmark_names <- c(
  "CD", "DeltaBlue", "Havlak", "Json", "Richards",
  
  "Bounce", "List", "Mandelbrot",
  "NBody", "Permute", "Queens",  "Sieve",
  "Storage", "Towers"
  
  
# "GraphSearch",
# "Fannkuch-SOM",
#   "LanguageFeatures.Dispatch-SOM",
#   "LanguageFeatures.Fibonacci-SOM",
#   "LanguageFeatures.FieldLoop-SOM",
#   "LanguageFeatures.IntegerLoop-SOM",
#   "LanguageFeatures.Loop-SOM",
#   "LanguageFeatures.Recurse-SOM",
#  "LanguageFeatures.Sum-SOM",
#  "LanguageFeatures.WhileLoop-SOM",
#   "Sort.BubbleSort-SOM",
#   "Sort.QuickSort-SOM",
#   "Sort.TreeSort-SOM"
)

prepare_benchmark_names <- function(data) {
  name_map <-     list("LanguageFeatures.Dispatch-SOM" = "Dispatch",
                       "LanguageFeatures.Fibonacci-SOM" = "Fibonacci",
                       "LanguageFeatures.FieldLoop-SOM"  = "FieldLoop",
                       "LanguageFeatures.IntegerLoop-SOM" = "IntegerLoop",
                       "LanguageFeatures.Loop-SOM"        = "Loop",
                       "LanguageFeatures.Recurse-SOM"      = "Recurse",
                       "Sort.BubbleSort-SOM" = "BubbleSort",
                       "Sort.QuickSort-SOM" = "QuickSort",
                       "Sort.TreeSort-SOM" = "TreeSort")
  # Rename
  levels(data$Benchmark)  <- map_names(
    levels(data$Benchmark),
    name_map)
  data
}
