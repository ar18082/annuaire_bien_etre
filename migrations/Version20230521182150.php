<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230521182150 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE prestataire ADD categorie_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE prestataire ADD CONSTRAINT FK_60A26480BCF5E72D FOREIGN KEY (categorie_id) REFERENCES categorie_de_services (id)');
        $this->addSql('CREATE INDEX IDX_60A26480BCF5E72D ON prestataire (categorie_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE prestataire DROP FOREIGN KEY FK_60A26480BCF5E72D');
        $this->addSql('DROP INDEX IDX_60A26480BCF5E72D ON prestataire');
        $this->addSql('ALTER TABLE prestataire DROP categorie_id');
    }
}
