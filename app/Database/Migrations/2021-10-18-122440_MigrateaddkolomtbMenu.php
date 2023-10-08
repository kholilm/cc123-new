<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class MigrateaddkolomtbMenu extends Migration
{
    public function up()
    {
        $fields = [
            'path_pdf' => ['type' => 'varchar', 'constraint' => 200,  'after' => 'icon']
        ];
        $this->forge->addColumn('tb_menu', $fields);
    }

    public function down()
    {
        $this->forge->dropColumn('tb_menu', 'path_pdf'); // to drop one single column
    }
}
