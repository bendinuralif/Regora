$(document).on("change keyup", ".durasi", function() {
    var durasi_el = $(this);
    var durasi = durasi_el.val();
  
    if (durasi == "") {
      durasi = 0;
      durasi_el.val(durasi);
    }
  
    var jam_mulai_el = durasi_el.parent().parent().find(".jam_mulai");
    var jam_selesai_el = durasi_el.parent().parent().find(".jam_selesai");
    var harga_per_jam_el = durasi_el.parent().parent().find(".harga_per_jam");
    var subtotal_el = durasi_el.parent().parent().find(".subtotal");
  
    if (jam_mulai_el.val() != "") {
      var jam_mulai = jam_mulai_el.val();
      var jam_mulai_parts = jam_mulai.split(":");
      var jam = parseInt(jam_mulai_parts[0]);
  
      var harga_per_jam = parseInt(harga_per_jam_el.text().replace(/,/g, ''));
      var subtotal = durasi * harga_per_jam;
  
      if (jam >= 17) {
        subtotal += 100000;
      }
  
      subtotal_el.text(numberWithCommas(subtotal));
    }
  
    var subtotal_bawah = 0;
    $(".subtotal").each(function() {
      subtotal_bawah += parseInt($(this).text().replace(/,/g, ''));
    });
  
    var diskon = parseInt($("#diskon").text().replace(/,/g, '')); // Update to use .text() instead of .val()
    var grandtotal = subtotal_bawah - diskon;
  
    $("#subtotal_bawah").text(numberWithCommas(subtotal_bawah));
    $("#diskon").text(numberWithCommas(diskon));
    $("#grandtotal").text(numberWithCommas(grandtotal));
  });
  