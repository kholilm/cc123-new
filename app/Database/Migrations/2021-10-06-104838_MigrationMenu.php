<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class MigrationMenu extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_menu'       => ['type' => 'int', 'constraint' => '11', 'unsigned' => true, 'auto_increment' => true],
            'menu'          => ['type' => 'varchar', 'constraint' => '200'],
            'url'           => ['type' => 'varchar', 'constraint' => '200'],
            // 'controller'    => ['type' => 'varchar', 'constraint' => '200', 'null' => true],
            // 'menu_id'       => ['type' => 'int', 'constraint' => '11'],
            'jenis_menu'    => ['type' => 'varchar', 'constraint' => '50'],
            'icon'          => ['type' => 'varchar', 'constraint' => '100', 'null' => true],
            'sort_menu'     => ['type' => 'int', 'constraint' => '11',],
            'is_active'     => ['type' => 'int', 'constraint' => '2']
        ]);
        $this->forge->addKey('id_menu', true);
        $this->forge->createTable('tb_menu');
    }

    public function down()
    {
        $this->forge->dropTable('tb_menu');
    }
}
