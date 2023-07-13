<hr><h3 align="center"><b><?php echo $lapangan->nama_lapangan; ?></b></h3><hr>
<div class="row">
<?php if ($lapangan) { ?>
        <p><?php
        if(empty($lapangan->foto)) {
          echo "<img class='card-img-top' src='".base_url()."assets/images/no_image_thumb.png'>";
        } else {
          echo "<img src='".base_url()."assets/images/lapangan/".$lapangan->foto."'> ";
        }
        ?></p>
        <p><?php echo $lapangan->deskripsi; ?></p>
        <!-- <p>ID: <?php echo $lapangan->id_lapangan; ?></p> -->
        <p>Harga :  <?php
          $harga_rupiah = number_format($lapangan->harga, 0, ',', '.');
          echo 'Rp. '.$harga_rupiah . ' ,-';
          ?></p>
        <!-- Tambahkan informasi lain yang diperlukan -->
        <p>Fasilitas : <?php echo $lapangan->fasilitas; ?></p>
        <p>Keterangan : <?php echo $lapangan->keterangan; ?></p>

        <!-- Tambahkan tombol atau tautan untuk aksi lainnya, misalnya untuk booking -->
        <a href="<?php echo base_url('cart/buy/').$lapangan->id_lapangan ?>">
            <button class="btn btn-sm btn-primary"><i class="fa fa-shopping-cart"></i> Booking Sekarang!</button>
          </a>
    <?php } else { ?>
        <p>Lapangan tidak ditemukan  .</p>
    <?php } ?>
</div>
