## set your name and email 
usethis::use_git_config(user.name = "Esenia Hernandez", 
                        user.email = "eseniahernandez10@gmail.com")
 
## create a personal access token (PAT) for authentication 
usethis::create_github_token()

## set personal access token 
credentials::set_github_pat("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")

