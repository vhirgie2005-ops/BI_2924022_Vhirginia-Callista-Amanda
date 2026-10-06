let
    // Mengambil data langsung dari tabel staging transaksi yang sudah ada di Power BI
    Source = stg_Fact_Sales_Raw,
    
    // Menaikan baris pertama sebagai header tabel
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    
    // Langkah penanganan Branch_ID B099 (Orphan Transaction / anomali cabang)
    AddAuditedBranch = Table.AddColumn(PromotedHeaders, "Audited_Branch_ID", each 
        if [Branch_ID] = "B099" then "Unknown / Unmapped Branch" 
        else [Branch_ID]
    ),
    
    // Menambahkan Audit Flag untuk pemisahan data transaksi valid vs anomali
    AddAuditFlag = Table.AddColumn(AddAuditedBranch, "Branch_Audit_Flag", each 
        if [Branch_ID] = "B099" then "Orphan Record (B099)" else "Valid Branch"
    )
in
    AddAuditFlag