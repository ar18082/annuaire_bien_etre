<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230114161917 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Modification de la table bloc et position et nouvelles relations';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE bloc (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) DEFAULT NULL, description VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE position (id INT AUTO_INCREMENT NOT NULL, bloc_id INT DEFAULT NULL, internaute_id INT DEFAULT NULL, ordre INT DEFAULT NULL, UNIQUE INDEX UNIQ_462CE4F55582E9C0 (bloc_id), UNIQUE INDEX UNIQ_462CE4F5CAF41882 (internaute_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE position ADD CONSTRAINT FK_462CE4F55582E9C0 FOREIGN KEY (bloc_id) REFERENCES bloc (id)');
        $this->addSql('ALTER TABLE position ADD CONSTRAINT FK_462CE4F5CAF41882 FOREIGN KEY (internaute_id) REFERENCES internaute (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE position DROP FOREIGN KEY FK_462CE4F55582E9C0');
        $this->addSql('ALTER TABLE position DROP FOREIGN KEY FK_462CE4F5CAF41882');
        $this->addSql('DROP TABLE bloc');
        $this->addSql('DROP TABLE position');
    }
}
