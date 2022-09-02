# Automação local para testes do Suzy (Unicamp)

Isso é apenas um teste, eu passei uns 35 minutos fazendo isso pois minha esposa perguntou se tinha um jeito de rodar os testes que o professor dela disponibiliza automaticamente com a solução que ela desenvolveu, sem ter que rodar um a um ou submeter pro Susy.

Com certeza existe um jeito mais elegante, mas "Bash é vida" (HERRERA, 2022)!

## Instalação

Execute no terminal:

```bash
sudo curl -fsSL "https://raw.githubusercontent.com/brunodrugowick/unicamp-susy-test-runner/main/susy-test.sh" -o /usr/local/bin/susy-test ; sudo chmod +x /usr/local/bin/susy-test
```

## Rodando

O script espera receber um arquivo `.zip` com a seguinte estrutura:

```bash
open/
├── arq01.in
├── arq01.out
├── arq02.in
├── arq02.out
├── arq03.in
├── arq03.out
├── arq04.in
├── arq04.out
├── arq05.in
├── arq05.out
├── arq06.in
├── arq06.out
├── arq07.in
├── arq07.out
├── arq08.in
├── arq08.out
├── arq09.in
├── arq09.out
├── arq10.in
└── arq10.out
```

E um arquivo `.py` com o seu código. Ele será executado com `python3`.

### Exemplo

Para uma pasta com os seguintes arquivos:

```bash
.
├── aux02.zip
└── lab02.py
```

Execute:

```bash
susy-test aux02.zip lab02.py
```

