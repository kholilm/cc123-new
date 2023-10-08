<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Migratepdf extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_pdf'       => ['type' => 'int', 'constraint' => '11', 'unsigned' => true, 'auto_increment' => true],
            'nama'          => ['type' => 'varchar', 'constraint' => '200'],
            'keterangan'          => ['type' => 'varchar', 'constraint' => '1000', 'null' => true],
            'path_pdf'          => ['type' => 'varchar', 'constraint' => '200', 'null' => true],
        ]);
        $this->forge->addKey('id_pdf', true);
        $this->forge->createTable('tb_pdf');
    }

    public function down()
    {
        $this->forge->dropTable('tb_pdf');
    }
}
