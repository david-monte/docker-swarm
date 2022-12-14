# Cluster Swarm Local

Repositório contendo a implementação de um Cluster Local com o Docker Swarm e otimizando o processo com o Vagrant.

## Descrição das Etapas de Projeto

1. Criação um Vagrantfile com as definições de 3 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes de node01 e node02; 
2. Cada Máquina Virtual (MV) tem um IP fixo; 
3. Todas as MV possuem o Ubuntu-22.04 como sistema operacional e o Docker pré-instalado; 
4. A máquina com o nome de master é o nó *master* do cluster; 
5. As demais máquinas deverão incluídas no cluster swarm são nós *Workers*;
6. No processo de criação do cluster com o vagrant foram adicionados ao nó *master*: 
> * Um container docker com o mysql-server; e
> * O mysql-client (instalado diretamente no *host*).