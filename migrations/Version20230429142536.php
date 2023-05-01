<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230429142536 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE code_postal ADD communes_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE code_postal ADD CONSTRAINT FK_CC94AC375969B77A FOREIGN KEY (communes_id) REFERENCES commune (id)');
        $this->addSql('CREATE INDEX IDX_CC94AC375969B77A ON code_postal (communes_id)');
        $this->addSql('ALTER TABLE commune ADD localite_id INT DEFAULT NULL, ADD region_id INT NOT NULL, ADD code_postal_id INT NOT NULL');
        $this->addSql('ALTER TABLE commune ADD CONSTRAINT FK_E2E2D1EE924DD2B5 FOREIGN KEY (localite_id) REFERENCES localite (id)');
        $this->addSql('ALTER TABLE commune ADD CONSTRAINT FK_E2E2D1EE98260155 FOREIGN KEY (region_id) REFERENCES localite (id)');
        $this->addSql('ALTER TABLE commune ADD CONSTRAINT FK_E2E2D1EEB2B59251 FOREIGN KEY (code_postal_id) REFERENCES code_postal (id)');
        $this->addSql('CREATE INDEX IDX_E2E2D1EE924DD2B5 ON commune (localite_id)');
        $this->addSql('CREATE INDEX IDX_E2E2D1EE98260155 ON commune (region_id)');
        $this->addSql('CREATE INDEX IDX_E2E2D1EEB2B59251 ON commune (code_postal_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE code_postal DROP FOREIGN KEY FK_CC94AC375969B77A');
        $this->addSql('DROP INDEX IDX_CC94AC375969B77A ON code_postal');
        $this->addSql('ALTER TABLE code_postal DROP communes_id');
        $this->addSql('ALTER TABLE commune DROP FOREIGN KEY FK_E2E2D1EE924DD2B5');
        $this->addSql('ALTER TABLE commune DROP FOREIGN KEY FK_E2E2D1EE98260155');
        $this->addSql('ALTER TABLE commune DROP FOREIGN KEY FK_E2E2D1EEB2B59251');
        $this->addSql('DROP INDEX IDX_E2E2D1EE924DD2B5 ON commune');
        $this->addSql('DROP INDEX IDX_E2E2D1EE98260155 ON commune');
        $this->addSql('DROP INDEX IDX_E2E2D1EEB2B59251 ON commune');
        $this->addSql('ALTER TABLE commune DROP localite_id, DROP region_id, DROP code_postal_id');
    }
}
