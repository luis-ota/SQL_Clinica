# Banco de Dados - Clínica Médica  
Projeto desenvolvido durante a disciplina de Banco de Dados

Este repositório contém um exemplo prático de modelagem de banco de dados relacional para uma clínica médica. Foi utilizado o **MySQL** como Sistema Gerenciador de Banco de Dados (SGBD), e todas as tabelas, relacionamentos e inserções foram feitas manualmente, com o objetivo de aplicar conceitos teóricos na prática.

O modelo permite gerenciar informações sobre médicos, pacientes, internações, quartos e outros dados essenciais de uma clínica médica.

---

## Estrutura do Banco de Dados

### Tabelas Criadas

- `Medico`  
  Armazena informações sobre os médicos da clínica, incluindo CRM, nome, salário e área de atuação.

- `Paciente`  
  Registra dados pessoais dos pacientes, como RG, CPF e data de nascimento.

- `EnderecoPaciente`  
  Guarda o endereço residencial do paciente, associado à tabela `Paciente`.

- `TelefonePaciente`  
  Armazena números de telefone dos pacientes, também vinculados à tabela `Paciente`.

- `Quarto`  
  Representa os quartos disponíveis na clínica, com número e andar.

- `Internacao`  
  Controla registros de internação, incluindo data, paciente, médico responsável e quarto ocupado.

- `MedicoParticipanteInternacao`  
  Relacionamento N:N entre médicos e internações, indicando quais médicos participaram de cada internação.

---

### Inserção de Exemplo

```sql
INSERT INTO Medico VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae1", "CRM 123456/PR", "Luis Rafael", 15000, "Neurocirurgiao");
INSERT INTO Paciente VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "0000000000", "00000000000", "2000-12-25");
INSERT INTO EnderecoPaciente VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "00000000", "Batatinha", 13, "Futebol", "Pais do", "NJ");
INSERT INTO TelefonePaciente VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "055", "041", "2020000000");
INSERT INTO Quarto VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae2", 2, 4);
INSERT INTO Internacao VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae3", "6d72f07c-d840-47d0-9f8b-3105b2519ae2", "6d72f07c-d840-47d0-9f8b-3105b2519ae1", "6d72f07c-d840-47d0-9f8b-3105b2519ae4", "2023-10-02");
INSERT INTO MedicoParticipanteInternacao VALUES("6d72f07c-d840-47d0-9f8b-3105b2519ae1", "6d72f07c-d840-47d0-9f8b-3105b2519ae3");
```

---

## Conceitos Aplicados

- **Modelagem de Dados Relacional**
- **Chaves Primárias e Estrangeiras**
- **Relacionamentos 1:N e N:N**
- **Normalização de Dados**
- **Inserção de Registros**
- **Identificadores Únicos (UUIDs)**

---

**Desenvolvido como parte do aprendizado prático em Banco de Dados na faculdade.**
