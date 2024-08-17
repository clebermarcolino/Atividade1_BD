## Sistema de Gerenciamento de Clínica em MySQL

Este é um sistema de gerenciamento de clínica simples implementado em MySQL, desenvolvido como parte de uma atividade. 

**Funcionalidades:**

O sistema permite:

- Cadastrar pacientes com informações como nome, CPF, sexo, idade e convênio.
- Cadastrar médicos com nome, especialidade, turno de trabalho e salário.
- Registrar consultas, associando pacientes e médicos, com data, diagnóstico e preço.
- Consultar dados de pacientes, médicos e consultas.
- Atualizar informações de médicos e consultas.
- Remover médicos e consultas com base em critérios específicos.
- Modificar a estrutura das tabelas, como adicionar e remover colunas.
- Excluir tabelas e o banco de dados.

**Estrutura do Banco de Dados:**

O banco de dados `Clinica` contém as seguintes tabelas:

- **Paciente:** Armazena informações dos pacientes.
    - `codP`: Chave primária, autoincremento.
    - `nome`: Nome completo do paciente (obrigatório).
    - `cpf`: CPF do paciente (único, obrigatório).
    - `sexo`: Sexo do paciente (M/F, obrigatório).
    - `idade`: Idade do paciente (obrigatório, maior ou igual a zero).
    - `convenio`: Convênio médico do paciente (opcional, padrão 'Particular').

- **Medicos:** Armazena informações dos médicos.
    - `codM`: Chave primária, autoincremento.
    - `nome`: Nome completo do médico (obrigatório).
    - `especialidade`: Especialidade do médico.
    - `turno`: Turno de trabalho do médico (Manhã/Tarde/Noite, obrigatório).
    - `salario`: Salário do médico.

- **Consultas:** Armazena informações das consultas.
    - `paciente`: Chave estrangeira referenciando `codP` da tabela `Paciente`.
    - `medico`: Chave estrangeira referenciando `codM` da tabela `Medicos`.
    - `data`: Data da consulta (obrigatório).
    - `diagnostico`: Diagnóstico da consulta (removido na questão 10).
    - `preco`: Preço da consulta.
    - `horario`: Horário da consulta (adicionado na questão 9).

**Observações:**

- O código utiliza `SET SQL_SAFE_UPDATES = 0` para permitir updates e deletes sem cláusula WHERE. É recomendável utilizar essa opção com cautela e reativar a segurança após as operações ( `SET SQL_SAFE_UPDATES = 1`).
- A coluna `diagnostico` foi removida na questão 10 e a coluna `horario` foi adicionada na questão 9.
- As tabelas e o banco de dados são excluídos nas últimas etapas.

**Como Usar:**

1. Certifique-se de ter o MySQL instalado e configurado em seu sistema.
2. Copie e cole o código SQL em um cliente MySQL (ex: MySQL Workbench).
3. Execute o código passo a passo para criar o banco de dados, tabelas, inserir dados e realizar as operações.
