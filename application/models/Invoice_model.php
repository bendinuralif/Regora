<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Invoice_model extends CI_Model {

    public function getInvoice($invoice_id) {
        // Ambil data invoice dari database berdasarkan ID
        // Gantikan dengan logika Anda untuk mengambil data dari database

        $invoice = array(
            'id' => $invoice_id,
            'date' => '2023-06-17',
            'customer' => 'John Doe',
            'total' => 100.00,
            'items' => array(
                array('name' => 'Item 1', 'quantity' => 2, 'price' => 25.00),
                array('name' => 'Item 2', 'quantity' => 1, 'price' => 50.00),
            )
        );

        return $invoice;
    }

}
