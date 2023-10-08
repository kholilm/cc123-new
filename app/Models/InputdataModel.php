<?php

namespace App\Models;

use CodeIgniter\Model;

class InputdataModel extends Model
{
    protected $table                = 'tb_menu';
    protected $primaryKey           = 'id_menu';
    protected $returnType           = 'object';
    protected $allowedFields        = ['menu', 'url', 'menu_id', 'controller', 'jenis_menu', 'icon', 'sort_menu', 'path_pdf', 'is_active'];

    protected $column_order      = ['id_menu', 'menu', 'idmenu.menu', 'url', 'jenis_menu', 'icon',  'sort_menu', 'is_active', ''];
    protected $column_search     = ['tb_menu.menu', 'idmenu.menu', 'tb_menu.url', 'tb_menu.jenis_menu', 'tb_menu.icon', 'tb_menu.sort_menu', 'tb_menu.is_active'];
    protected $order             = ['menu' => 'asc'];

    function get_datatables()
    {
        $this->_get_datatables_query();
        if (@$_POST['length'] != -1)
            $this->dt->limit(@$_POST['length'], @$_POST['start']);
        $query = $this->dt->get();
        return $query->getResult();
    }
    private function _get_datatables_query()
    {
        $this->dt = $this->db->table('tb_menu')
            ->select('tb_menu.id_menu,idmenu.menu as menuid,tb_menu.menu,tb_menu.url,tb_menu.controller,tb_menu.jenis_menu,tb_menu.icon,tb_menu.sort_menu,tb_menu.is_active')
            ->join('tb_menu as idmenu', 'idmenu.id_menu=tb_menu.menu_id', 'left');
        $i = 0;
        foreach ($this->column_search as $item) {
            if (@$_POST['search']['value']) {
                if ($i === 0) {
                    $this->dt->groupStart();
                    $this->dt->like($item, $_POST['search']['value']);
                } else {
                    $this->dt->orLike($item, $_POST['search']['value']);
                }
                if (count($this->column_search) - 1 == $i)
                    $this->dt->groupEnd();
            }
            $i++;
        }

        if (isset($_POST['order'])) {
            $this->dt->orderBy($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->dt->orderBy(key($order), $order[key($order)]);
        }
    }
    function count_filtered()
    {
        $this->_get_datatables_query();
        return $this->dt->countAllResults();
    }
    public function count_all()
    {
        return $this->dt->countAllResults();
    }
    public function getlistmenu()
    {
        $data =  $this->db->table('tb_menu')
            ->select('id_menu,menu')
            ->where('menu_id', 0)
            ->where('is_active', 1)
            ->get()->getResult();
        return $data;
    }
}
