<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_search extends CI_Model
{

    // get result()
    public function getResult($query = null, $category = null, $max = null, $min = null, $brand = 'null')
    {

        $this->db->from('product p');
        $this->db->join('category c', 'c.id = p.category', 'left');
        if ($max != '') {

            $this->db->where('p.price <=', $max);

        }

        if ($min != '') {
            $this->db->where('p.price >=', $min);
        }

        if ($brand != '') {
            foreach ($brand as $key => $value) {
                
                $this->db->or_where('p.brand ', $value);
            }
        }


        if ($query != '') {
            $this->db->like('title', $query)
                ->or_like('tags', $query)
                ->or_like('name', $query);
        }
        if ($category != '') {
            $this->db->like('name', $category);
        }

        return $this->db->get()->result();
    }

    // get product with pagination
    public function search_pagination($query, $category, $perpage, $page, $max, $min, $brand = 'null')
    {
        $this->db->from('product p');
        $this->db->join('category c', 'c.id = p.category', 'left');

        if ($max != '') {

            $this->db->where('p.price <=', $max);

        }

        if ($min != '') {
            $this->db->where('p.price >=', $min);
        }

        if ($query != '') {
            $this->db->like('title', $query)
                ->or_like('tags', $query)
                ->or_like('name', $query);
        }
        if ($category != '') {
            $this->db->like('name', $category);
        }
        $this->db->order_by('p.created_on', 'desc');
        $this->db->limit($perpage, $page);
        return $this->db->get()->result();
    }

    // get single product
    public function single_product($id)
    {
        return $this->db->from('product p')
        ->select('p.id,p.name,p.pr_id, p.sku, p.is_stock,p.mrp, p.selling_price, p.discount, p.featured_image, p.description, p.uniq, p.weight, p.dimensions, p.no_of_insert, p.material, p.type,p.ceremony,p.orientation,p.print_option,p.size,p.gsm,p.color,p.theme,p.pr_type,c.title as category,sc.title as subcategory')
        ->where('p.pr_id', $id)
        ->join('category c', 'c.id = p.category', 'left')
        ->join('sub_category sc', 'sc.id = p.sub_category', 'left')
        ->get()
        ->row();
    }

    public function single_images($id='')
    {
       return $this->db->where('prod_id', $id)->get('product_imgs')->result();
    }

}

/* End of file M_search.php */
