# Automação local para testes do Suzy (Unicamp)

Isso é apenas um teste, eu passei uns 35 minutos fazendo isso pois minha esposa perguntou se tinha um jeito de rodar os testes que o professor dela disponibiliza automaticamente com a solução que ela desenvolveu, sem ter que rodar um a um ou submeter pro Susy.

Com certeza existe um jeito mais elegante, mas "Bash é vida" (HERRERA, 2022)!

## Instalação

Execute no terminal:

```bash
sudo curl -fsSL "https://raw.githubusercontent.com/brunodrugowick/unicamp-susy-test-runner/main/susy-test.sh" -o /usr/local/bin/susy-test ; sudo chmod +x /usr/local/bin/susy-test
```

## Executando

O script executa um conjunto de testes em um arquivo Python. O primeiro é o arquivo zipado (com a extensão `.zip`) que o sistema SySy disponibilizou para você; o segundo, a o arquivo Python (extensão `.py`) que você fez e que vai submeter ao SuSy posteriormente para verificação.

Mas, antes, o danado do script te ajuda executando rapidamente todos os testes abertos pra você, assim você passa mais tempo fazendo código e aprendendo, e menos tempo copiando e colando (ou digitando) entradas e saídas antes de ter certeza que seu programa está funcionando.  

O arquivo `.zip` esperado pelo script tem a seguinte estrututura:

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

E o arquivo `.py` com o seu código é livre. Se sua implementação estiver correta, ele será executado com `python3`.

### Exemplo

Se você está em uma pasta com os seguintes arquivos:

```bash
.
├── aux02.zip # este é o conjunto de testes disponibilizados pelo SuSy
└── lab02.py # esta é a solução que você desenvolveu
```

Execute no terminal:

```bash
susy-test aux02.zip lab02.py
```

