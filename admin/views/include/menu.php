
<div class="col l3 m12 s12">
<div class="side-bar white z-depth-1">
<ul class="li-list ">
        <li class="<?php echo $this->uri->segment(1) == 'dashboard'?'active':''?>"> <a href="<?php echo base_url('dashboard') ?>"><i class="fab fa-delicious li-icon"></i>Dashboard</a></li>
        <li class="droup-link <?php echo $this->uri->segment(1) == 'category'?'active':'' ?>"><a class="droup-link-item"><i class="fas fa-th-list li-icon"></i>Category</a>
            <ul class="droupmenu">
              <li class="<?php echo $this->uri->segment(1) == 'category'?'active':'' ?>"><a href="<?php echo base_url('category/manage') ?>">Main Category</a></li>
              <li class="<?php echo $this->uri->segment(2) == 'sub-category'?'active':'' ?>"><a href="<?php echo base_url('category/sub-category') ?>">Sub Catgory</a></li>
            </ul>
      </li>
</ul>
</div>
</div>