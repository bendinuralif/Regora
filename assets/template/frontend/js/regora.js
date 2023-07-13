$(document).ready(function() {
    // Mencegah perubahan durasi untuk lapangan dengan id 2 dan 3
    $(".durasi").on("change keyup", function() {
      var lapangan_id = $(this).closest("tr").find(".lapangan_id").val();
      if (lapangan_id == "2" || lapangan_id == "3") {
        $(this).val(1);
      }
      hitungSubtotal();
    });
    
    // Menghitung subtotal dan grand total
    function hitungSubtotal() {
      var subtotal_bawah = 0;
      $('.subtotal').each(function() {
        var harga_per_jam = $(this).closest("tr").find(".harga_per_jam").text().replace(/,/g, "");
        var durasi = $(this).closest("tr").find(".durasi").val();
        var subtotal = parseInt(harga_per_jam) * parseInt(durasi);
        $(this).text(numberWithCommas(subtotal));
        subtotal_bawah += subtotal;
      });
  
      var disc = 0; // Nilai diskon (jika ada)
      $("#subtotal_bawah").text(numberWithCommas(subtotal_bawah));
      $("#diskon").text(numberWithCommas(disc));
      var grandtotal = subtotal_bawah - disc;
      $("#grandtotal").text(numberWithCommas(grandtotal));
    }
    
    // Fungsi untuk menambahkan tanda koma pada angka
    function numberWithCommas(x) {
      return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    
    // Set durasi awal menjadi 1 jam untuk lapangan dengan id 2 dan 3
    $(".lapangan_id").each(function() {
      var lapangan_id = $(this).val();
      if (lapangan_id == "2" || lapangan_id == "3") {
        var durasi = $(this).closest("tr").find(".durasi");
        durasi.val(1).attr("readonly", true);
        durasi.trigger("change");
      }
    });
  });
  