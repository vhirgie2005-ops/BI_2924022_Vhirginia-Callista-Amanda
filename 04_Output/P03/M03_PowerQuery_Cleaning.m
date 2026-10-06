let
    Sumber = stg_Fact_Sales_Raw,
    #"Duplikat yang Dihapus" = Table.Distinct(Sumber, {"Transaction_ID"}),
    #"Teks Terpotong" = Table.TransformColumns(#"Duplikat yang Dihapus",{{"Channel", Text.Trim, type text}}),
    #"Teks Bersih" = Table.TransformColumns(#"Teks Terpotong",{{"Channel", Text.Clean, type text}}),
    #"Kustom yang Ditambahkan" = Table.AddColumn(#"Teks Bersih", "Channel_Clean", each if Text.Lower(Text.Trim(Text.Clean([Channel]))) = "toko" then "Toko"
else if Text.Lower(Text.Trim(Text.Clean([Channel]))) = "online" then "Online"
else if Text.Lower(Text.Trim(Text.Clean([Channel]))) = "whatsapp" then "WhatsApp"
else [Channel]),
    #"Kolom yang Diubah Namanya" = Table.RenameColumns(#"Kustom yang Ditambahkan",{{"Channel", "Channel_Raw"}, {"Channel_Clean", "Channel"}}),
    #"Jenis yang Diubah" = Table.TransformColumnTypes(#"Kolom yang Diubah Namanya",{{"Channel", type text}})
in
    #"Jenis yang Diubah"