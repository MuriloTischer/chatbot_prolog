% Projeto Integrador de Competências Em Ciência da Computação
% Autor: Murilo Tadeu Domingo Tischer.
% Projeto: ChatBot de Perguntas e Respostas.
% Assunto: Redes de Computadores.
% Linguagem: Prolog.


:- include(first_db).
:- include(second_db).
:- include(db_introdutorio).

chat:-
	nl, format('Ola! Eu sou o X-Mu_Robot.'),nl,
	format('Abaixo estao as perguntas que eu consigo te ajudar ate o momento. '),nl,
	format('Bons estudos!'),nl, nl,

%Base de conhecimentos 1.
	    format('O que eh uma rede de computadores?'),nl,
		format('Qual a classificacao de redes?'),nl,
	    format('O que eh um roteador?'),nl,
	    format('O que eh uma placa de rede?'),nl,
		format('O que eh um modem?'),nl,
		format('O que eh um repetidor?'),nl,
		format('O que eh um switch?'),nl,
		format('O que eh rede LAN?'),nl,
		format('O que eh rede MAN?'),nl,
		format('O que eh rede WAN?'),nl,
		format('O que eh internet?'),nl,
		format('O que eh Correio Eletronico?'),nl,
		format('O que eh um cabo coaxial?'),nl,
		format('O que eh um cabo de par trancado?'),nl,
		format('O que eh fibra optica?'),nl,
		format('O que eh Radiofrequencia?'),nl,
		format('O que sao Topologias de redes?'),nl,
		format('O que eh uma Topologia Parcialmente Ligada?'),nl,
		format('O que eh uma Topologia em Barramento?'),nl,
		format('O que eh uma Topologia ponto a ponto?'),nl,
		format('O que eh uma Topologia multiponto?'),nl,
		format('O que eh uma Topologia em estrela?'),nl,nl,

%Base de conhecimentos 2.
		format('O que eh Ethernet?'),nl,
		format('O que eh Enderecamento na ethernet e quais sao os seus servicos?'),nl,
		format('O que eh um Protocolo MAC?'),nl,
		format('O que eh Padrao Gigabit Ethernet?'),nl,
		format('O que eh Metro Ethernet?'),nl,
		format('O que eh o protocolo TCP/IP?'),nl,
		format('Quais sao os protocolos que constituem o TCP?'),nl,
		format('O que eh IGRP?'),nl,
		format('O que eh EIGRP?'),nl,
		format('O que eh SMTP?'),nl,
		format('O que eh Telnet?'),nl,
		format('O que eh FTP?'),nl,
		format('O que eh HTTP?'),nl,
		format('O que eh camada de rede?'),nl,
		format('O que eh IPv4?'),nl,
		format('O que eh ICMP?'),nl,nl,
		format('Suas perguntas devem estar entre aspas simples e para que eu consiga entendelo nao use acentuacoes.'),nl,

	repeat,
	nl, format('-> '),
	read(Entrada),
	consulta_dados(Entrada, Resposta),
	format(Resposta), nl,
	finalizar(Entrada).

consulta_dados(Entrada, RespostaCorreta) :-
	consultar(Entrada, RespostaCorreta), !.

finalizar(Entrada):-
	Entrada = ('fim').

:- initialization(chat).
