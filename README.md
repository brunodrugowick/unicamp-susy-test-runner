# Automação local para testes do Suzy (Unicamp)

Isso é apenas um teste, eu passei uns 35 minutos fazendo isso pois minha esposa perguntou se tinha um jeito de rodar os testes que o professor dela disponibiliza automaticamente com a solução que ela desenvolveu, sem ter que rodar um a um ou submeter pro Susy.

Com certeza existe um jeito mais elegante, mas "Bash é vida" (HERRERA, 2022)!

## Instalação

Execute no terminal:

```bash
sudo curl -fsSL "https://raw.githubusercontent.com/brunodrugowick/unicamp-susy-test-runner/main/susy-test.sh" -o /usr/local/bin/susy-test ; sudo chmod +x /usr/local/bin/susy-test
```

## Rodando

Agora execute o scripte com duas entradas:

- O caminho para o arquivo zip que contem os testes abertos disponibilizados no Susy
- O caminho para o seu script

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

