<?php
class Detail extends CI_Controller {
    public function index($id) {
        $data['title'] = 'Detail'; // Menambahkan judul halaman

        $this->load->model('Lapangan_model'); // Memuat model Lapangan_model
        $lapangan = $this->Lapangan_model->getLapanganById($id); // Mengambil data lapangan dari model

        if ($lapangan) {
            // Load view detail.php dan teruskan data lapangan dan judul halaman ke view
            $data['lapangan'] = $lapangan;
            $this->load->view('front/detail/body', $data);
        } else {
            echo "Lapangan tidak ditemukan.";
        }
    }
}
?>

