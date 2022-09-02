#language:pt

Funcionalidade: Tela Inicial Cadastro de Cliente

Cenario: Inserir CPF inválido
Dado que estou na tela inicial do sistema
E digito '12345678910' no campo 'CPF/CNPJ'
Quando clicar no botão 'Continuar'
Então deve ser exibido a mensagem de erro: "Ops, esse número parece estar incorreto."

Cenario: Inserir CNPJ inválido
Dado que estou na tela inicial do sistema
E digito '12345678910111' no campo 'CPF/CNPJ'
Quando clicar no botão 'Continuar'
Então deve ser exibido a mensagem de erro: "Ops, esse número parece estar incorreto."

Cenario: Validar mascara para CPF
Dado que estou na tela inicial do sistema
Quando  digito '12345678910' no campo 'CPF/CNPJ'
Então deve ser exibido o valor com a máscara: "123.456.789-10"

Cenario: Validar mascara para CNPJ
Dado que estou na tela inicial do sistema
Quando  digito '12345678910111' no campo 'CPF/CNPJ'
Então deve ser exibido o valor com a máscara: "12.345.678/9101-11"

Cenario: Continuar com campo CPF/CNPJ vazio
Dado que estou na tela inicial do sistema
Quando mantenho o campo vazio
Então o botão 'Continuar' deve se manter desabilitado

Cenario: Inserir CPF válido
Dado que estou na tela inicial do sistema
E digito '86756031007' no campo 'CPF/CNPJ'
Quando clicar no botão 'Continuar'
Então deve ser aberto a página de cadastro com o campo CPF/CNPJ já preenchido

Cenario: Inserir CNPJ válido
Dado que estou na tela inicial do sistema
E digito '42681910000127' no campo 'CPF/CNPJ'
Quando clicar no botão 'Continuar'
Então deve ser aberto a página de cadastro com o campo CPF/CNPJ já preenchido

Cenario: Validar funcionamento do botão 'Facebook'
Dado que estou na tela inicial do sistema
Quando clico no botão com a logo do Facebook
Então deve ser redirecionado a página Mercafacil no Facebook

Cenario: Validar funcionamento do botão 'Instagram'
Dado que estou na tela inicial do sistema
Quando clico no botão com a logo do Instagram
Então deve ser redirecionado ao perfil mercafacil no Instagram

Cenario: Validar funcionamento do botão 'Youtube'
Dado que estou na tela inicial do sistema
Quando clico no botão com a logo do Youtube
Então deve ser redirecionado ao canal Mercafacil no Youtube

Cenario: Validar funcionamento do botão 'Linkedin'
Dado que estou na tela inicial do sistema
Quando clico no botão com a logo do Linkedin
Então deve ser redirecionado ao perfil Mercafacil no Instagram

Cenario: Validar funcionamento do botão 'Twitter'
Dado que estou na tela inicial do sistema
Quando clico no botão com a logo do Twitter
Então deve ser redirecionado ao perfil mercafacil no Twitter

Cenario: Validar funcionamento do botão 'Termos de aceite do clube'
Dado que estou na tela inicial do sistema
Quando clico na opção 'Termos de aceite do clube'
Então deve ser aberta uma janela com os termos de aceite do sistema

Cenario: Validar funcionamento do botão 'Cookies e política de privacidade'
Dado que estou na tela inicial do sistema
Quando clico na opção 'Cookies e política de privacidade'
Então deve ser aberta uma cortina no rodapé com a politica de privacidade do sistema e um botão 'Fechar'

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Funcionalidade: Tela de Cadastro de cliente Pessoa Fisica

Cenario: Inserir apenas um nome no campo 'Nome Completo'
Dado que estou na tela de cadastro
Quando digito 'Guilherme' no campo 'Nome Completo'
Então deve ser exibido a mensagem de erro: "É necessário inserir o nome completo"

Cenario: Continuar com campo 'Nome Completo' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Nome Completo' vazio
Então deve ser exibido a mensagem de erro: "É necessário inserir o nome completo"

Cenario: Validar funcionamento dos botões para seleção de genero
Dado que estou na tela inicial de cadastro
Quando clico nos botões de opção de genero
Então deve ser preenchido o botão conforme seleção

Cenario: Inserir celular com quantidade de numeros invalida
Dado que estou na tela de cadastro
Quando digito '452031135' no campo 'Celular'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ser um telefone válido."

Cenario: Continuar com campo 'Celular' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Celular' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'E-mail' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'E-mail' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir e-mail invalido
Dado que estou na tela de cadastro
Quando digito 'guilhermegmail.com' no campo 'E-mail'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter um e-mail válido."

Cenario: Continuar com campo 'Data de Nascimento' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Data de nascimento' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir data de nascimento incompleta
Dado que estou na tela de cadastro
Quando digito '2607' no campo 'Data de nascimento'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ser uma data válida (DD/MM/YYYY)."

Cenario: Inserir data de nascimento com menos de 18 anos
Dado que estou na tela de cadastro
Quando digito '26072015' no campo 'Data de nascimento'
Então deve ser exibido a mensagem de erro: "Cadastro não permitido para menores de 18 anos."

Cenario: Continuar com campo 'CEP' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'CEP' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir 'CEP' incorreto
Dado que estou na tela inicial de cadastro
Quando digito '11111111' no campo 'CEP'
Então deve ser exibido a mensagem de erro: "CEP não encontrado"

Cenario: Validar funcionamento do botão 'Não sei meu CEP'
Dado que estou na tela inicial de cadastro
Quando clico no botão 'Não sei meu CEP'
Então deve-se redirecionar a pagina do 'Busca CEP' em uma nova guia do navegador

Cenario: Validar funcionamento do preenchimento de endereço automático
Dado que estou na tela inicial de cadastro
Quando preencho o campo 'CEP' com um valor válido e existente
Então deve ser preenchido os campos 'UF', 'Cidade', 'Bairro' e 'Rua' automaticamente

Cenario: Validar funcionamento do campo 'UF'
Dado que estou na tela inicial de cadastro
Quando clico no campo 'UF'
Então deve ser aberto um menu com todas UFs do Brasil

Cenario: Validar funcionamento do campo 'Cidade'
Dado que estou na tela inicial de cadastro
Quando clico no campo 'Cidade'
Então deve ser aberto um menu com todos os munícipios da UF selecionada

Cenario: Continuar com campo 'Bairro' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Bairro' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Rua' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Rua' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Numero' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Numero' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Senha' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com menos de 6 caracteres no campo 'Senha'
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com campo 'Confirmar Senha' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Confirmar Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com menos de 6 caracteres no campo 'Confirmar Senha'
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Confirmar Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Validar funcionamento do botão Exibir Senha
Dado que estou na tela inicial de cadastro
Quando clico no botão com ícone de olho
Então deve ser exibido a senha no campo em questão

Cenario: Validar funcionamento do Checkbox "Li e aceito os termos de adesão"
Dado que estou na tela inicial de cadastro
Quando clico na checkbox 'Li e aceito os termos de adesão'
Então deve ser aberto uma janela com os termos de uso do sistema

Cenario: Validar funcionamento do cadastro de pessoa fisica com todos os campos válidos
Dado que estou na tela inicial de cadastro de cliente pessoa fisica
Quando preencho o campo 'Nome Completo' com 'Guilherme Guimaraes'
E seleciono uma opção de 'Genero' 'Masculino'
E preencho o campo 'Celular' com '11985028400'
E preencho o campo 'E-mail' com 'guilherme@gmail.com'
E preencho o campo 'Data de nascimento' com '26072000'
E preencho o campo 'CEP' com '08664310'
E preencho o campo 'Numero' com '150'
E preencho o campo 'Senha' com 'Mercafacil'
E preencho o campo 'Confirmar Senha' com 'Mercafacil'
E clico no checkbox 'Li e aceito os termos de adesão'
E clico no botão 'Li e Concordo'
E clico no botão 'Cadastrar'
Então deve ser salvo o cliente com os dados preenchidos na base de dados
E ser redirecionado para a tela inicial do sistema

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Funcionalidade: Tela de Cadastro de cliente Pessoa Juridica

Cenario: Inserir menos de 9 numeros no campo 'Inscricao Estadual'
Dado que estou na tela de cadastro
Quando digito '1268433' no campo 'Inscricao Estadual'
Então deve ser exibido a mensagem de erro: "Inscricao Estadual possui 9 numeros"

Cenario: Inserir apenas uma letra campo 'Razao Social'
Dado que estou na tela de cadastro
Quando digito 'G' no campo 'Razao Social'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 2 caracteres."

Cenario: Continuar com campo 'Razao Social' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Razao Social' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir celular com quantidade de numeros invalida
Dado que estou na tela de cadastro
Quando digito '776033135' no campo 'Celular'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ser um telefone válido."

Cenario: Continuar com campo 'Celular' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Celular' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir telefone com quantidade de numeros invalida
Dado que estou na tela de cadastro
Quando digito '7702335' no campo 'Telefone para contato'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ser um telefone válido."

Cenario: Continuar com campo 'Telefone para contato' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Telefone para contato' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'E-mail' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'E-mail' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir e-mail invalido
Dado que estou na tela de cadastro
Quando digito 'mercagmail.com' no campo 'E-mail'
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter um e-mail válido."

Cenario: Continuar com campo 'CEP' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'CEP' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Inserir 'CEP' incorreto
Dado que estou na tela inicial de cadastro
Quando digito '11111111' no campo 'CEP'
Então deve ser exibido a mensagem de erro: "CEP não encontrado"

Cenario: Validar funcionamento do botão 'Não sei meu CEP'
Dado que estou na tela inicial de cadastro
Quando clico no botão 'Não sei meu CEP'
Então deve-se redirecionar a pagina do 'Busca CEP' em uma nova guia do navegador

Cenario: Validar funcionamento do preenchimento de endereço automático
Dado que estou na tela inicial de cadastro
Quando preencho o campo 'CEP' com um valor válido e existente
Então deve ser preenchido os campos 'UF', 'Cidade', 'Bairro' e 'Rua' automaticamente

Cenario: Validar funcionamento do campo 'UF'
Dado que estou na tela inicial de cadastro
Quando clico no campo 'UF'
Então deve ser aberto um menu com todas UFs do Brasil

Cenario: Validar funcionamento do campo 'Cidade'
Dado que estou na tela inicial de cadastro
Quando clico no campo 'Cidade'
Então deve ser aberto um menu com todos os munícipios da UF selecionada

Cenario: Continuar com campo 'Bairro' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Bairro' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Rua' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Rua' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Numero' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Numero' vazio
Então deve ser exibido a mensagem de erro: "Esse campo é obrigatório."

Cenario: Continuar com campo 'Senha' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com menos de 6 caracteres no campo 'Senha'
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com campo 'Confirmar Senha' vazio
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Confirmar Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Continuar com menos de 6 caracteres no campo 'Confirmar Senha'
Dado que estou na tela inicial de cadastro
Quando mantenho o campo 'Confirmar Senha' vazio
Então deve ser exibido a mensagem de erro: "Esse campo precisa ter pelo menos 6 caracteres."

Cenario: Validar funcionamento do botão Exibir Senha
Dado que estou na tela inicial de cadastro
Quando clico no botão com ícone de olho
Então deve ser exibido a senha no campo em questão

Cenario: Validar funcionamento do Checkbox "Li e aceito os termos de adesão"
Dado que estou na tela inicial de cadastro
Quando clico na checkbox 'Li e aceito os termos de adesão'
Então deve ser aberto uma janela com os termos de uso do sistema

Cenario: Validar funcionamento do cadastro de pessoa fisica com todos os campos válidos
Dado que estou na tela inicial de cadastro de cliente pessoa fisica
Quando preencho o campo 'Razao Social' com 'Mercafacil'
E preencho o campo 'Celular' com '11985528400'
E preencho o campo 'Telefone para contato' com '1134284010'
E preencho o campo 'E-mail' com 'merca@mercafacil.com'
E preencho o campo 'CEP' com '80730-480'
E preencho o campo 'Numero' com '150'
E preencho o campo 'Senha' com 'Merca1234'
E preencho o campo 'Confirmar Senha' com 'Merca1234'
E clico no checkbox 'Li e aceito os termos de adesão'
E clico no botão 'Li e Concordo'
E clico no botão 'Cadastrar'
Então deve ser salvo o cliente com os dados preenchidos na base de dados
E ser redirecionado para a tela inicial do sistema




























