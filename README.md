
# 📊 Como definir democracia? Visualização com dados do V-Dem

**Objetivo do Projeto**  
Este projeto tem como propósito disseminar o uso de bases públicas de dados e estimular a utilização do R como ferramenta de análise e comunicação científica. A partir de uma abordagem conceitual e empírica, visualizamos como a democracia brasileira evoluiu nas últimas décadas em diferentes dimensões.


---

## 🧠 Conceito e Aplicação

A democracia é um conceito complexo, composto por múltiplas dimensões. Para além do voto, ela envolve aspectos como liberdade civil, participação popular, igualdade de acesso e qualidade do debate público. Neste projeto, usamos dados do **V-Dem Institute** para medir e visualizar cinco dimensões da democracia no Brasil de 1900 a 2023:

- **Democracia Deliberativa**
- **Democracia Igualitária**
- **Democracia Eleitoral**
- **Democracia Participativa**
- **Democracia Liberal**

---

## 📦 Fonte dos Dados

Os dados são fornecidos pelo pacote R `vdemdata`. Para utilizá-los, basta instalar o pacote diretamente do GitHub:

```r
install.packages("remotes")
remotes::install_github("vdeminstitute/vdemdata")
```

A base completa é acessada como `vdemdata::vdem`.

---

## 📜 O que o script faz?

O script `democracy1.R`:

1. Filtra os dados do Brasil (a partir de 1900);
2. Seleciona variáveis dos cinco índices democráticos;
3. Reestrutura os dados com `pivot_longer`;
4. Gera uma animação com `ggplot2` + `gganimate` sobre a evolução da democracia no Brasil.

---

## ✨ Visualização Final

O resultado é um gráfico animado como o exemplo abaixo:

![Exemplo de visualização](gif_democracia3.gif)

---

## 🧰 Requisitos

```r
install.packages(c("tidyverse", "gganimate"))
remotes::install_github("vdeminstitute/vdemdata")
```

---

## ✍️ Autoria

Projeto por **Valéria Andrade Silva**  
Doutoranda em Economia – Cedeplar/UFMG  
💡 [LinkedIn](https://linkedin.com/in/seuperfil)  
📧 valeria@[email].com
