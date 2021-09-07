
estabelecimentos <- read_csv("https://raw.githubusercontent.com/danielppagotto/bases_uteis_saude/main/nome_estabelecimentos.csv",
                             locale = locale(encoding = "latin1")) 

cid10 <- read_csv2("https://raw.githubusercontent.com/danielppagotto/bases_uteis_saude/main/cid_10.csv") %>% 
  janitor::clean_names() 

municipios <- read_csv2("https://raw.githubusercontent.com/danielppagotto/bases_uteis_saude/main/lista_dados_sage.csv") 
municipios$ibge <- as.character(municipios$ibge)

estabelecimentos <- read_csv("https://raw.githubusercontent.com/danielppagotto/bases_uteis_saude/main/nome_estabelecimentos.csv")

populacao <- read_delim("https://raw.githubusercontent.com/danielppagotto/bases_uteis_saude/main/populacao_municipios.csv",
                        delim = ";") %>% 
                      gather(key = "ano", value = "populacao", `2019`,`2020`,
                             `2021`)
