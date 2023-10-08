<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
        <img src="/assets/templated/dist/img/cc123.png" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Balikpapan</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- SidebarSearch Form -->
        <div class="">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <?php
                $this->db       = \Config\Database::connect();
                $request        = \Config\Services::request();

                if ($request->uri->getTotalSegments() < 2) {
                    $menunav = 'kosong';
                } else {
                    $menunav = $this->db->table('tb_menu')->where('url', $request->uri->getSegment(2))->get()->getRow();
                }

                if ($menunav == 'kosong') {
                    $aktifmenu = 0;
                } else {
                    $aktifmenu = $menunav->menu_id;
                }
                $ambilmenu = $this->db->table('tb_menu');
                $menusidebar = $ambilmenu->orderBy('sort_menu', 'asc')->getWhere(['jenis_menu' => 'side-bar', 'is_active' => 1])->getResult();

                ?>

                <?php foreach ($menusidebar as $ms) : ?>
                    <li class="nav-item <?= ($ms->id_menu == $aktifmenu) ? 'menu-open' : null ?>">
                        <a href=" #" class="nav-link">
                            <i class="<?= $ms->icon ?>"></i>
                            <p>
                                <?= $ms->menu ?>
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>

                        <?php
                        $menuparent = $ambilmenu->orderBy('sort_menu', 'desc')->getWhere(['menu_id' => $ms->id_menu, 'is_active' => 1])->getResult();
                        if ($request->uri->getTotalSegments() == 2) {
                            $navitem = $request->uri->getSegment(2);
                        } else {
                            $navitem = $request->uri->getSegment(0);
                        }
                        ?>
                        <?php foreach ($menuparent as $mp) : ?>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/showpdf/<?= $mp->url ?>" class="nav-link <?= ($mp->url == $navitem) ? 'active' : null ?>">
                                        <i class="<?= $mp->icon ?>"></i>
                                        <p><?= $mp->menu ?></p>
                                    </a>
                                </li>
                            </ul>
                        <?php endforeach ?>
                    </li>
                <?php endforeach ?>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>

    <!-- /.sidebar -->
</aside>