-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_final
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `projeto_final_jogo`
--

DROP TABLE IF EXISTS `projeto_final_jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto_final_jogo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `desenvolvedor` varchar(100) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `plataformas` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `requisitos` longtext NOT NULL,
  `idiomas` longtext NOT NULL,
  `generos` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `background` varchar(100) DEFAULT NULL,
  `data_adicionado` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_final_jogo`
--

LOCK TABLES `projeto_final_jogo` WRITE;
/*!40000 ALTER TABLE `projeto_final_jogo` DISABLE KEYS */;
INSERT INTO `projeto_final_jogo` VALUES (1,'Dark Souls Remastered','FromSoftware',69.70,'Steam,PlayStation','Mas então, fez-se o fogo. Experimente novamente o jogo aclamado pela crítica e definidor de gênero que foi o início tudo. Belamente remasterizado, volte a Lordran com detalhes em alta definição a 60fps.','Mínimos:\r\nRequer um processador e sistema operacional de 64 bits\r\nSO *: Windows 7 64-bit, Service Pack 1\r\nProcessador: Intel Core i5-2300 2.8 GHz / AMD FX-6300, 3.5 GHz\r\nMemória: 6 GB de RAM\r\nPlaca de vídeo: GeForce GTX 460, 1 GB / Radeon HD 6870, 1 GB\r\nDirectX: Versão 11\r\nArmazenamento: 8 GB de espaço disponível\r\nPlaca de som: DirectX 11 sound device\r\nOutras observações: Low Settings, 60 FPS @ 1080p','Ingles,Português','RPG','static/imgbanco/dark.jpg','static/backgrounds/darkwallpaper.jpg','2024-10-09 20:16:46'),(2,'Cyberpunk 2077: Ultimate Edition','CD PROJEKT RED',275.90,'Steam,PlayStation','Cyberpunk 2077 é um RPG de ação e aventura em mundo aberto ambientada em Night City, uma megalópole obcecada por poder, glamour e modificação corporal. Jogue como V, um mercenário cyberpunk, e enfrente as forças mais poderosas da cidade em uma luta pela glória e sobrevivência. Aqui nascem as lendas. Qual será a sua?','Mínimos:\r\nRequer um processador e sistema operacional de 64 bits\r\nSO: 64-bit Windows 10\r\nProcessador: Core i7-6700 or Ryzen 5 1600\r\nMemória: 12 GB de RAM\r\nPlaca de vídeo: GeForce GTX 1060 6GB or Radeon RX 580 8GB or Arc A380\r\nDirectX: Versão 12\r\nArmazenamento: 70 GB de espaço disponível','Ingles,Português','RPG','static/imgbanco/cyberdos_punks.jpg','static/backgrounds/cyberdoswallpaper.jpg','2024-10-09 20:16:46'),(3,'Dragon Ball Sparking Zero','Bandai Namco Entertainment',282.50,'Steam,PlayStation','test','test','Ingles,Português','PVP','static/imgbanco/Dragon_ball.jpg','static/backgrounds/wallpaperdbz.jfif','2024-10-10 00:11:04'),(4,'Silent Hill 2','Konami Digital Entertainment, Inc.',349.90,'Steam,PlayStation,Xbox','Vivencie uma verdadeira aula de terror psicológico com este jogo, aclamado como o melhor da série, no hardware mais atual com visuais sinistros e sons de arrepiar.\r\n\r\nAssuma o papel de James Sunderland e explore a quase deserta cidade de Silent Hill neste muito aguardado remake do clássico de 2001. Atraído até este lugar misterioso por uma carta de sua esposa, que morreu há três anos, James vasculha a cidade atrás de vestígios dela.\r\n\r\nEntre num mundo onírico e se depare com monstros perversos, o ameaçador Pyramid Head e um elenco de personagens aparentemente comuns que tentam lidar com o passado.\r\n\r\nÀ medida que James aceita sua instabilidade, uma pergunta ainda restará: qual o verdadeiro motivo para ele vir a Silent Hill?','Mínimos:\r\nRequer um processador e sistema operacional de 64 bits\r\nSO: Windows 10 x64\r\nProcessador: Intel Core i7-6700K | AMD Ryzen 5 3600\r\nMemória: 16 GB de RAM\r\nPlaca de vídeo: NVIDIA® GeForce® GTX 1070 Ti or AMD Radeon™ RX 5700 or Intel® Arc™ A750\r\nDirectX: Versão 12\r\nArmazenamento: 50 GB de espaço disponível\r\nPlaca de som: Windows Compatible Audio Device.\r\nOutras observações: Playing on minimum requirements should enable to play on Low/Medium quality settings in FullHD (1080p) in stable 30 FPS. SSD is recommended','Ingles,Português','RPG','static/imgbanco/headersillent.jpg','static/backgrounds/silent-hill-2-hero-banner-desktop-01-en-04oct22.webp','2024-10-10 00:48:55'),(5,'LEGO® Harry Potter™ Collection',' Warner Bros. Games',199.99,'Steam,PlayStation','LEGO® Harry Potter™ Collection traz LEGO® Harry Potter™: Anos 1 a 4 e LEGO® Harry Potter™: Anos 5 a 7 juntos em um só jogo, agora remasterizado com gráficos aprimorados.\r\n\r\nEsta compilação traz a habilidade criativa de LEGO para junto do mundo expansivo de Harry Potter, com uma jornada emocionante cheia de feitiços, poções, quebra-cabeças, aulas, duelos e muito mais para jogadores de todas as idades.','Mínimos:\r\nSO: Windows 10\r\nProcessador: AMD Ryzen 3 1200 or Intel Core i5-4590\r\nMemória: 4 GB de RAM\r\nPlaca de vídeo: AMD Radeon HD 7850 or Nvidia GeForce GTX 650\r\nDirectX: Versão 12\r\nArmazenamento: 14 GB de espaço disponível','Ingles,Português','RPG,Party Games','static/imgbanco/headerlegoharry.jpg','static/backgrounds/legoharrywall.jpg','2024-10-10 00:53:54');
/*!40000 ALTER TABLE `projeto_final_jogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 10:53:25
