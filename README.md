# Teste Inovamind

### 🛠 Tecnologias utilizadas
- Ruby 3.0.0
- Rails 7.0.2
- MongoDB Manual de instalação: [Aqui!](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)

## Funcionalidades
A gem nokogiri foi utilizada para varrer o conteúdo da page e também para realizar o filtro das informações solicitadas por meio de css class e atribuindo o valor de cada bloco e suas propriedades. Utilizando o serializer, renderiza o resultado da pesquisa para retomar um JSON.
Para que consiga realizar um request, é necessário que esteja com o Token ativo para que consiga acessar o conteúdo do endpoint
Endpoints que solicitam Token:
- Para ver todos os usuários http://localhost:3000/api/users (GET)
- Para buscar os quotes por tags http://localhost:3000/api/v1/quotes/{tag_desejada} (GET)

### Testando projeto

- Clone a aplicação
```bash
git clone https://github.com/kariane/test_inovamind.git
```
- Entre no projeto
```bash
cd test_inovamind
```
- Instale as dependências
```bash
bundle
```
- Inicie o Mongodb
MacOS
```bash
brew install mongodb-community@5.0
```
- Set o servidor
```bash
rails s
```
- Utilize ferramentas para fazer requisições. EX: Postman ou Insomnia
## Consumindo a API

### Obtendo o Token de acesso

- Crie um usuário no endpoint: http://localhost:3000/api/users (POST)
<img width="961" alt="Screen Shot 2022-03-01 at 21 01 33" src="https://user-images.githubusercontent.com/68606096/156269239-70249fa7-14d0-4519-910d-3ab3876079a0.png">

- Após isso, faça o login no endpoint: http://localhost:3000/api/auth/login (POST)
##### Para conseguir seu Token e conseguir acessar os de mais endpoints. Para isso, utilize seu email e senha
<img width="1034" alt="Screen Shot 2022-03-01 at 21 04 49" src="https://user-images.githubusercontent.com/68606096/156269525-44bca2ad-0a08-4816-93e7-e861386368e0.png">

### Onde colocar o Token:
<img width="576" alt="Screen Shot 2022-03-01 at 21 08 22" src="https://user-images.githubusercontent.com/68606096/156269856-e1bc4e8d-148d-4bd4-95c1-e411c374d706.png">

### Com o Token ativo
- Para ver todos os usuários, use este endpoint: http://localhost:3000/api/users (GET)
<img width="1026" alt="Screen Shot 2022-03-01 at 21 07 06" src="https://user-images.githubusercontent.com/68606096/156269744-7572be53-042c-4dfa-bd5e-01527abf4f9f.png">

- Para buscar os quotes por tags, use este endpoint: http://localhost:3000/api/v1/quotes/{tag_desejada} (GET)
<img width="1029" alt="Screen Shot 2022-03-01 at 21 13 04" src="https://user-images.githubusercontent.com/68606096/156270290-f3649aba-dd32-472c-9f19-ee05e676876f.png">
