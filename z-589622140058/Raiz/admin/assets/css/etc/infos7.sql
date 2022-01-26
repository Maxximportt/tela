-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 19-Set-2021 às 20:36
-- Versão do servidor: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.0.33-0+deb9u11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `japacb1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` varchar(255) NOT NULL,
  `validade` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `titular` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf_` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero_` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `bin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `infos`
--

INSERT INTO `infos` (`id`, `numero`, `validade`, `cvv`, `cpf`, `titular`, `email`, `senha`, `nome`, `cpf_`, `nascimento`, `celular`, `cep`, `rua`, `numero_`, `bairro`, `cidade`, `estado`, `bin`) VALUES
(1, '4329580106689034', '09/25', '139', '053.884.055-24', 'Edilson lima', 'saritamezzacapa94@gmail.com', '21082014', '', '', '', '11910998488', '08382-551', 'Rua Andressa Souza Veiga', '52', 'Jardim Arantes', 'São Paulo', 'SP', 'DEBIT ELECTRON COOP BANK AB VISA\n'),
(4, '5162925507363910', '10/28', '318', '323.757.748-09', 'Eliana Chiarelli', 'elianachiarelli@gmail.com', '605790', '', '', '', '19993329582', '13467-195', 'Rua das Dracenas', '284', 'Cidade Jardim II', 'Americana', 'SP', 'CREDIT PLATINUM NUBANK MASTERCARD\n'),
(5, '4271675316267015', '08/26', '121', '061.374.646-52', 'Tatiana O Costa', 'thatilucas07@gmail.com', 'tati1234', 'Tatiana Oliveira da Costa', '061.374.646-52', '19/19/1983', '31995008800', '31810-530', 'Rua Cecílio Emígdio Saturnino', '56', 'Providência', 'Belo Horizonte', 'MG', 'CREDIT CLASSIC BANCO BRADESCO, S.A. VISA\n'),
(8, '5447318503464055', '03/27', '238', '316.341.170-34', 'Loeci santos pires', 'loecipires974@gmail.com', 'caquinho', '', '', '', '51992949727', '94040-200', 'Rua Flor de Liz', '80', 'COHAB B', 'Gravataí', 'RS', 'CREDIT GOLD BANCO SANTANDER BRASIL, S.A. MASTERCARD\n'),
(11, '5502098248375665', '02/29', '047', '213.681.928-31', 'Sirlene A O Souza', 'sirlene_olly@hotmail.com', 'Sir230178', '', '', '', '14997153791', '17025-330', 'Rua José Lemos de Almeida', '347', 'Vila Nova Santa Luzia', 'Bauru', 'SP', 'CREDIT GOLD NUBANK MASTERCARD\n'),
(12, '6504859884169613', '07/25', '665', '199.214.368-48', 'Suzana martins ', 'Suzanajose@1975gmail.com', 'larissa', '', '', '', '35998186330', '37407-000', 'Rua sabino José de lima ', '56', 'Centro ', 'São Bento Abade', 'MG', 'CREDIT PERSONAL BANCO BRADESCO, S.A. DISCOVER\n'),
(13, '5268630661250191', '08/27', '093', '176.507.837-74', 'Thaysa S F Pinto', 'sirlenez@Outlook.com', '428695', '', '', '', '24998567336', '27155-000', 'Rua Samuel couto ', '353', 'Vargem Alegre ', 'BARRA DO PIRAI ', 'RJ', 'CREDIT GOLD ITAU UNIBANCO, S.A. MASTERCARD\n'),
(15, '5309940305394805', '06/22', '782', '085.801.408-46', 'Valdicéia Pereira Elias ', 'v_k_f_@hotmail.com', '272264', '', '', '', '18996073765', '17780-000', 'Rua Gumercindo de Brito ', '103', 'Vila Cáries ', 'Lucélia', 'SP', 'CREDIT STANDARD ITAU UNIBANCO, S.A. MASTERCARD\n'),
(16, '4271675412958012', '09/26', '047', '806.044.982-68', 'Ana Celia Ribeiro Rodrigues ', 'aminhamiu@gmail.com', '282519ad', '', '', '', '972135459', '24370-600', 'Travessa Bezerra de Menezes', '40', 'Charitas', 'Niterói', 'RJ', 'CREDIT CLASSIC BANCO BRADESCO, S.A. VISA\n'),
(17, '5447318557873581', '10/27', '659', '111.251.466-05', 'Izidio Gervison F Gonçalves10', '38992286693', '14041992', '', '', '', '38992286693', '39406-515', 'Rua Três', '270', 'Jardim Olímpico', 'Montes Claros', 'MG', 'CREDIT GOLD BANCO SANTANDER BRASIL, S.A. MASTERCARD\n'),
(18, '4812741327451216', '10/23', '561', '075.326.078-60', 'Aliani Silva Amaral ', 'alianiamaral@hotmail.com', 'Aliani2107', '', '', '', '11999455880', '02228-001', 'Rua Francisco Alves Bezerra', '1355', 'Parque Edu Chaves', 'São Paulo', 'SP', 'CREDIT CLASSIC  VISA\n'),
(21, '5502091370330129', '09/28', '729', '537.662.969-49', 'Palmira Serra da Silva', 'miraserra092@gmail.com', '781526', '', '', '', '18981783469', '19160-000', 'Rua Alcides  Sanvezzo', '78', 'Cohab Chris', 'Álvares Machado', 'SP', 'CREDIT GOLD NUBANK MASTERCARD\n'),
(22, '4329580664703029', '03/25', '857', '054.413.478-80', 'MARISA MACIEL ', 'marisa_ruhan@hotmail.com', 'mi@@@@252417', 'MARISA NOBRE MACIEL ', '054.413.478-80', '31/03/1967', '13996443548', '11425-130', 'Rua Flávio Martins', '107', 'Santa Cruz dos Navegantes', 'Guarujá', 'SP', 'DEBIT ELECTRON COOP BANK AB VISA\n'),
(23, '5114770834928525', '06/26', '178', '081.253.677-05', 'Francisca Simone de Oliveira Lima', 'simone.vynni@gmail.com', '33460357mony', '', '', '', '21990806978', '21240-330', 'Rua Tales de Carvalho', '122', 'Jardim América', 'Rio de Janeiro', 'RJ', 'DEBIT PREPAID METABANK MASTERCARD\n'),
(24, '4092810052187930', '05/28', '994', '293.569.975-00', 'Iracema  A Silva', 'iracemaalexandrinagata04@gmail.com', 'lindinha2013', '', '', '', '71985163206', '41235-720', 'Rua Alexandre Ferreira', '264', 'Pau da Lima', 'Salvador', 'BA', 'DEBIT CLASSIC WELLS FARGO BANK, N.A. VISA\n'),
(26, '5438821261798300', '08/29', '301', '095.128.587-46', 'Daiane Farias', 'dayalexandrequirino36@gmail.com', '81730067', '', '', '', '21979332948', '22081-010', 'Rua Souza Lima', '375', 'Copacabana', 'Rio de Janeiro', 'RJ', 'CREDIT STANDARD BANCO CSF, S.A. MASTERCARD\n'),
(28, '4224630626723015', '02/26', '893', '008.793.773-56', 'Alexandre Araújo Rios', 'Keli.sandra.arios@hotmail.com ', 'tdpsnqlqmfrtlc', '', '', '', '86988549324', '65636-410', 'Rua Porfiro Gomes da Costa', '1599', 'Parque Piauí II', 'Timon', 'MA', 'CREDIT CLASSIC BANCO BRADESCARD, S.A. VISA\n'),
(29, '4390200197736024', '10/2028', '303', '172.009.368-71', 'Mariusa Teixeira Pereira ', 'Tmariusa5@gmail.com', '070757', '', '', '', '11', '19988-148', 'Maria zezinnha Diniz ', '344', 'Bom retiro ', 'Sumaré ', 'SP', 'CREDIT CLASSIC BANCO MERCANTIL DO BRASIL, S.A. VISA\n'),
(30, '2307442303473136', '08/25', '241', '113.477.998-42', 'Rosemeire Miranda', 'meirelindonadri@hotmail.com', 'meire29032000', 'Rosemeire Miranda Carneiro', '113.477.998-42', '28/01/1971', '11948922642', '03620-001', 'Avenida São Miguel', '1888', 'Vila Marieta', 'São Paulo', 'SP', 'MASTERCARD\n'),
(32, '5189410220634466', '07/23', '979', '794.152.295-00', 'Lynn Filippucci', 'mac.lynnf@gmail.com', 'Monkey1971', 'Lynn Marie Filippucci', '794.152.295-00', '15/08/1949', '71991074860', '', '', '', '', '', '', 'DEBIT WORLD ELITE  MASTERCARD'),
(33, '4931017430309112', '06/26', '514', '519.527.428-20', 'DIVa FARAILDe Barbosa', 'cristianaprimavera@hotmail.com', 'guimay2309', '', '', '', '11984085554', '08485-430', 'Rua Arroio Triunfo', '140', 'Conjunto Habitacional Santa Etelvina III', 'São Paulo', 'SP', 'CREDIT GOLD BANCO BRADESCO, S.A. VISA'),
(34, '4705980535827102', '03/29', '529', '133.150.356-60', 'Beatriz g o santos', 'biagomes338@gmail.com', '75230025mj', '', '', '', '31996597304', '31250-450', 'Rua João Luiz de Campos', '338', 'Nova Cachoeirinha', 'Belo Horizonte', 'MG', 'CREDIT PLATINUM ITAU UNIBANCO, S.A. VISA\n'),
(35, '5426820019120407', '07/26', '665', '440.415.288-44', 'Guilherme Silva simoes', 'zilagvg@gmail.com', 'trióparada', '', '', '', '14997777454', '17066-103', 'Rua Argemiro Silva Sampaio', '1', 'Jardim Eldorado', 'Bauru', 'SP', 'CREDIT GE CAPITAL BANK, LTD. MASTERCARD\n'),
(36, '6505790014666013', '08/26', '410', '384.479.648-76', 'Monique p m Lopes ', 'Moniq_coruja@hotmail.com', 'Gregor1o', '', '', '', '15991067395', '18013-210', 'Rua Padre Madureira', '76', 'Além Ponte', 'Sorocaba', 'SP', 'CREDIT PERSONAL DISPONIVEL DISCOVER\n'),
(37, '5447315691856720', '05/23', '847', '006.652.818-62', 'Iriane T. Facchinato', 'irianefacch@gmail.com', '21091993Facch', '', '', '', '11997669708', '02633-000', 'Avenida Peri Ronchetti', '281', 'Jardim Peri', 'São Paulo', 'SP', 'CREDIT GOLD BANCO SANTANDER BRASIL, S.A. MASTERCARD\n'),
(38, '4444565086025259', '10/21', '880', '430.251.886-34', 'TÂNIA M A FERNANDES', 'taniaafernandes@live.com', 'jv150599', 'Tânia Maria Atademo Fernandes', '430.251.886-34', '05/04/1961', '32999924493', '36200-012', 'Rua Belizário Pena', '75', 'Centro', 'Barbacena', 'MG', 'CREDIT CLASSIC BANCO DO BRASIL, S.A. VISA\n'),
(39, '5447313010874110', '07/28', '693', '429.104.800-97', 'Sadia b p angeli', 'Sadiaangeli@hotmail.com', '51984094769', '', '', '', '51984094769', '94814-510', 'Avenida Pátria', '944', 'Formoza', 'Alvorada', 'RS', 'CREDIT GOLD BANCO SANTANDER BRASIL, S.A. MASTERCARD\n'),
(40, '5316810469271175', '02/28', '028', '324.455.470-91', 'Lorenara coelho', 'lorenaracoelho@bol.com.br', '55mansinho55', '', '', '', '48991472748', '88102-080', 'Rua José Ferminio Novaes', '1000', 'Kobrasol', 'São José', 'SC', 'CREDIT PLATINUM ITAU UNIBANCO, S.A. MASTERCARD\n'),
(41, '4771760269936678', '06/29', '199', '245.426.588-56', 'ROSANA M DE SOUZA', 'rsouzanovo@gmail.com', '508341', '', '', '', '11992741110', '04108-020', 'Rua Antero Mendes Leite', '135', 'Aclimação', 'São Paulo', 'SP', 'CREDIT INFINITE ITAU UNIBANCO, S.A. VISA\n'),
(43, '4108639384427223', '09/28', '062', '277.026.264-53', 'Ricardo Paulo nobre', 'suelycanejo1980@gmail.com', '301903', '', '', '', '81984386932', '54170-800', 'Rua Maria do Socorro Uchoa', '12', 'Sucupira', 'Jaboatão dos Guararapes', 'PE', 'CREDIT GOLD BANCO SANTANDER BRASIL, S.A. VISA\n'),
(45, '5345200525981113', '03/27', '877', '777.915.500-59', 'Carmelita lanius', 'carmelitalanius6@gmail.com', '5478690c', '', '', '', '51998955627', '93600-000', 'Rua raimundo correia', '525', 'Floresta', 'Estância velha', 'RS', 'CREDIT STANDARD BANSICREDI MASTERCARD\n'),
(46, '5140040107942043', '10/23', '684', '116.664.858-37', 'Francisca Rodrigues Holanda', 'nilcerholanda@gmail.com', 'frh202406', '', '', '', '988222356', '60020-060', 'Rua Marechal Deodoro', '519', 'Benfica', 'Fortaleza', 'CE', 'CREDIT GOLD BANCO BRADESCARD, S.A. MASTERCARD\n'),
(47, '4551831112751071', '09.2024', '078', '626.438.606-59', 'Maria  Conceicao Ferreira ', 'Conceicao7567@gmail.com', 'joaolucasluisa', '', '', '', '34988274851', '38740-248', 'Avenida Odir Aleixo', '106', 'Santo Antônio', 'Patrocínio', 'MG', 'CREDIT CLASSIC BANCO BRADESCO, S.A. VISA\n'),
(48, '5259228401031715', '07/30', '455', '816.134.156-72', 'Maria Joana V Costa', 'patriciarafaela2002@gmail.com', 'gaelcosta1', '', '', '', '31992807455', '32676-004', 'Rua Padre Rolim', '143', 'Amarante', 'Betim', 'MG', 'CREDIT STANDARD BANCO BMG, S.A. MASTERCARD\n'),
(49, '5502093928957999', '08/29', '773', '342.782.218-43', 'Gisele Maria Vieira', 'vgisele036@gmail.com', 'compras21', '', '', '', '11964575979', '08255-740', 'Rua Francisco Albani', '284', 'Conjunto Residencial José Bonifácio', 'São Paulo', 'SP', 'CREDIT GOLD NUBANK MASTERCARD\n'),
(50, '5350810421119295', '10/28', '237', '022.862.884-96', 'Reisiany Saraiva ', 'Reysaraiva78@g.mail.com', 'paoolo1978', '', '', '', '81986315337', '53290-370', 'Travessa 1 da Perseverança', '45', 'Ouro Preto ', 'Olinda', 'PE', 'CREDIT STANDARD ITAU UNIBANCO, S.A. MASTERCARD\n'),
(51, '4061683690834982', '08/24', '562', '180.295.068-05', 'Adriana Santos Lima', 'dikalaluli05@bol.com.br', 'm4d1s0n010203', '', '', '', '11998670019', '09450-000', 'Rua dos Autonomistas', '625', 'Vila Figueiredo', 'Rio Grande da Serra', 'SP', 'CREDIT CLASSIC BANCO CSF, S.A. VISA\n'),
(52, '5502098329580126', '10/27', '136', '420.298.838-40', 'Hamilton fabio belemo', 'sandrabelemo26@gmail.com', '25190826sandra', 'Sandra cristina belemo', '223.288.058-33', '26/12/1983', '16982257411', '14030-320', 'Rua Jorge de Lima', '1301', 'Jardim Maria Goretti', 'Ribeirão Preto', 'SP', 'CREDIT GOLD NUBANK MASTERCARD\n'),
(53, '2308880029399789', '12/24', '177', '378.469.063-72', 'Marta maria de sousa ', '9 87 99 62 06', '310184', '', '', '', '987996206', '60336- 28', 'Rua são Sebastião ', '402', 'Floresta ', 'Fortaleza ', 'CE', 'MASTERCARD\n'),
(54, '5263260025135022', '12/27', '567', '062.901.547-37', 'Joseane Cristina Faria Barbosa ', 'fariabarbosacristina270@gmail.com', 'ana07082015', '', '', '', '21988792984', '26293-567', 'Estrada Curral Novo', '977', 'Ipiranga', 'Nova Iguaçu', 'RJ', 'CREDIT CHASE MANHATTAN BANK USA, N.A. MASTERCARD\n'),
(55, '4532117162718036', '05/24', '116', '867.664.228-15', 'Maria Lúcia Abruzzato', '6387459832ab@gmail.com', 'mari452136', 'Maria Lúcia abruzzato', '867.664.228-15', '04/11/1951', '11953168187', '13221-050', 'Av José Alves da Cunha Lima ', '44', 'Vila nova esperia', 'Junduai', 'SP', 'CREDIT GOLD BANCO BRADESCO CARTOES, S.A. VISA\n'),
(56, '4641279996025992', '09/25', '859', '003.881.460-95', 'Roseleide B Lima', 'roseleidebinsfeldlima@hotmail.com', '240483', '', '', '', '51985344143', '94010-530', 'Rua Balduíno Augusto Linck', '87', 'Oriço', 'Gravataí', 'RS', 'CREDIT GOLD BANCO BRADESCO CARTOES, S.A. VISA\n'),
(57, '4984069552674647', '12/24', '361', '968.606.348-04', 'Marcia P S Pinheiro', 'marciapinh@yahoo.com.br', '2020bodasprata', '', '', '', '19981545701', '13087-460', 'Rua Jasmim', '810', 'Chácara Primavera', 'Campinas', 'SP', 'CREDIT PLATINUM BANCO DO BRASIL, S.A. VISA\n'),
(64, '5162927064695973', '03/29', '154', '017.044.157-13', 'Joana Penha de Souza ', 'joanapenhadesouza@gmail.com', 'joaninha04111970', '', '', '', '27999241369', '29101-782', 'Avenida Hugo Musso', '1554', 'Itapuã', 'Vila Velha', 'ES', 'CREDIT PLATINUM NUBANK MASTERCARD\n'),
(65, '5263260002713908', '12/27', '374', '132.798.418-01', 'Magali de souza Miranda ', 'magalipipinho@gmail.com', '343137', 'Magali de Souza Miranda', '132.798.418-01', '13/06/1961', '973459215', '06243-270', 'Rua Ladislau Antônio Ferreira Netto', '10', 'Jardim Elvira', 'Osasco', 'SP', 'CREDIT CHASE MANHATTAN BANK USA, N.A. MASTERCARD\n'),
(66, '4107492695038003', '03/26', '051', '773.285.741-00', 'Lucimar Costa Vale ', 'salaomaosdeanjo@gmail.com', '664488', '', '', '', '61984622276', '72236-010', 'Quadra QNP 30 Conjunto J', '50', 'Ceilândia Sul (Ceilândia)', 'Brasília', 'DF', 'CREDIT CLASSIC  VISA\n'),
(67, '4984069155189746', '06/25', '709', '032.535.988-10', 'Maria Jose Saconi ', '11971859555', 'm00000', '', '', '', '11971859555', '03135-020', 'Rua  Dante Alighieri ', '421', 'Vila Prudente', 'São Paulo', 'SP', 'CREDIT PLATINUM BANCO DO BRASIL, S.A. VISA\n'),
(68, '5453680487943714', '04/28', '057', '858.350.059-20', 'SIRLEI A SANTOS ', 'Sirleiapsantos0523@gmail.com', 'sir0523', '', '', '', '41992394502', '83325-195', 'Rua Palotina', '1119', 'Atuba', 'Pinhais', 'PR', 'CREDIT STANDARD ITAU UNIBANCO, S.A. MASTERCARD\n'),
(70, '5140871401490069', '04/24', '378', '989.301.178-72', 'Agda Ap Ferreira ', 'ademildepg@hormail.com', 'binho9519', '', '', '', '13981171110', '11701-110', 'Rua Campinas', '218', 'Boqueirão', 'Praia Grande', 'SP', 'CREDIT STANDARD BANCO BRADESCARD, S.A. MASTERCARD\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
