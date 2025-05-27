
# 📊 Como definir democracia? Visualização com dados do V-Dem

**Objetivo do Projeto**  
Este projeto tem como propósito disseminar o uso de bases públicas de dados e estimular a utilização do R como ferramenta de análise e comunicação científica. A partir de uma abordagem conceitual e empírica, visualizamos como a democracia brasileira evoluiu nas últimas décadas em diferentes dimensões.


---

## 🧠 Conceito e Aplicação

A democracia é um conceito complexo, composto por múltiplas dimensões. Para além do voto, ela envolve aspectos como liberdade civil, participação popular, igualdade de acesso e qualidade do debate público. Neste projeto, usamos dados do **Variedades de Democracia (V-Den)**.

O V-Dem é um projeto da Universidade de Gotemburgo que possui abordagem única para mensuração da democracia com mais de 450 indicadores medidos anualmente desde 1789 para 202 países. 🌍
Neste projeto, o foco está na evolução dos cinco princípios de alto nível da democracia no Brasil, observados ao longo do período de 1900 a 2024.

Os cinco princípios analisados são
- **Democracia Deliberativa** - mede se o raciocínio público é inclusivo e se concentra no bem comum.
- **Democracia Igualitária** - mede o nível de igualdade de acesso a recursos e os direitos e liberdades entre vários grupos dentro de uma sociedade.
- **Democracia Eleitoral** - mede se as eleições foram livres e justas e se houve prevalência de uma mídia livre e independente. É considerado o elemento central e por isso incluído nos demais índices.
- **Democracia Participativa** - mede o quanto os cidadãos participam de seu próprio governo por meio de instituições democráticas locais, organizações da sociedade civil e democracia direta.
- **Democracia Liberal** - mede o estado de direito e liberdades civis.

Os países são classificados com notas que vão de 0 a 1, em que 0 representa um regime ditatorial completo e 1, democracia plena.

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
