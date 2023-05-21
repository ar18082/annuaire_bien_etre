<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230521140645 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images CHANGE internaute_id internaute_id INT NOT NULL, CHANGE prestataire_id prestataire_id INT NOT NULL, CHANGE categorie_id categorie_id INT NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images CHANGE internaute_id internaute_id INT DEFAULT NULL, CHANGE prestataire_id prestataire_id INT DEFAULT NULL, CHANGE categorie_id categorie_id INT DEFAULT NULL');
    }
}
