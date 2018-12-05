blogdown::serve_site()

#create posts
#there are two options: 1. markdown using hufo command and 2. Rmarkdown 
#run it in terminal
# hugo new  --kind post post/my-article-name

#create talk
#hugo new  --kind talk talk/my-talk-name

#create project
#hugo new  --kind project project/my-project-name

#create publications
#hugo new --kind publication publication/<my-publication>
#hugo new --kind ../publication publication/XYZ/index.md
#hugo new --kind ../publication publication/<mypublication>

devtools::install_github("rstudio/radix")
