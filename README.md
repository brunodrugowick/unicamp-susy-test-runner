# Automação local para testes do Suzy (Unicamp)

Isso é apenas um teste, eu passei uns 35 minutos fazendo isso pois minha esposa perguntou se tinha um jeito de rodar os testes que o professor dela disponibiliza automaticamente com a solução que ela desenvolveu, sem ter que rodar um a um ou submeter pro Susy.

Com certeza existe um jeito mais elegante, mas "Bash é vida" (HERRERA, 2022)!

## Instalação

Se acharem útil eu faço um scriptzinho de instalação. Dá estrelinha no repositório aí em cima pra eu saber se é útil.

## Rodando

Baixe o script, salve em algum lugar e rode com duas entradas:

- O caminho para o arquivo zip que contem os testes abertos disponibilizados no Susy
- O caminho para o seu script

### Exemplo

Para uma pasta com os seguintes arquivos:

```bash
.
├── aux02.zip
├── lab02.py
└── susy-test.sh

```

Execute:

```bash
./susy-test.sh aux02.zip lab02.py
```

>_NOTA_: Você talvez tenha que dar permissão de execução ao script com `chmod +x susy-test.sh`.

