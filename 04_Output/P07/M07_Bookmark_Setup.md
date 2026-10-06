# M07 Bookmark Setup

## Tujuan

Mengatur dua bookmark pada halaman **Executive** agar pengguna dapat berganti antara visual **Penjualan per Bulan** dan **Laba per Bulan** melalui Bookmark Navigator.

## Langkah pengaturan

1. Pada halaman **Executive**, siapkan visual **Penjualan per Bulan** dan **Laba per Bulan**. Tempatkan keduanya pada posisi dan ukuran yang sama agar visual berganti di area yang sama.
2. Buka panel **Selection** dan **Bookmarks** melalui tab **View/Lihat**.
3. Tampilkan visual **Penjualan per Bulan** dan sembunyikan visual **Laba per Bulan**. Tambahkan bookmark, lalu beri nama **Fokus Penjualan**.
4. Buka opsi bookmark **Fokus Penjualan** dan nonaktifkan opsi **Data** agar bookmark menyimpan visibilitas visual, bukan pilihan filter atau slicer.
5. Tampilkan visual **Laba per Bulan** dan sembunyikan visual **Penjualan per Bulan**. Tambahkan bookmark bernama **Fokus Laba**.
6. Buka opsi bookmark **Fokus Laba** dan nonaktifkan opsi **Data**.
7. Masukkan **Bookmark Navigator** dan atur agar hanya menampilkan dua bookmark tersebut: **Fokus Penjualan** dan **Fokus Laba**.

## Pengujian bookmark

Lakukan pengujian langsung di Power BI Desktop:

1. Pilih nilai non-default pada slicer **Year**, **Branch**, atau **Channel**.
2. Klik **Fokus Penjualan**, lalu klik **Fokus Laba**.
3. Pastikan visual yang tampil berganti sesuai bookmark.
4. Pastikan pilihan slicer tetap sama setelah berpindah bookmark.

## Checklist

- [ ] Visual Penjualan per Bulan dan Laba per Bulan berada pada posisi dan ukuran yang sama.
- [ ] Bookmark **Fokus Penjualan** menampilkan visual Penjualan per Bulan dan menyembunyikan visual Laba per Bulan.
- [ ] Bookmark **Fokus Laba** menampilkan visual Laba per Bulan dan menyembunyikan visual Penjualan per Bulan.
- [ ] Opsi **Data** dinonaktifkan pada kedua bookmark.
- [ ] Bookmark Navigator hanya menampilkan kedua bookmark tersebut.
- [ ] Pilihan slicer Year/Branch/Channel tetap sama setelah berpindah bookmark.
- [ ] File Power BI sudah disimpan setelah perubahan.

**Penting:** Jangan tandai pemeriksaan QA sebagai lulus sebelum pengujian benar-benar dilakukan di Power BI Desktop. Jangan mengisi hasil pengujian yang belum dilakukan.
