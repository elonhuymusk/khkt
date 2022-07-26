.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "familyEntry"    # Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x1

    if-ge v5, v3, :cond_50

    aget-object v7, v2, v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_7a

    .line 112
    .local v7, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :try_start_e
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v9

    invoke-direct {v8, p3, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 113
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 114
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_26

    goto :goto_27

    .line 115
    :cond_26
    const/4 v6, 0x0

    .line 114
    :goto_27
    invoke-virtual {v8, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 116
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 117
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    .line 119
    .local v6, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v0, :cond_48

    .line 120
    new-instance v8, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v8, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v8

    goto :goto_4b

    .line 122
    :cond_48
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_7a

    .line 126
    .end local v6    # "platformFont":Landroid/graphics/fonts/Font;
    :goto_4b
    goto :goto_4d

    .line 124
    :catch_4c
    move-exception v6

    .line 110
    .end local v7    # "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 128
    :cond_50
    if-nez v0, :cond_53

    .line 129
    return-object v1

    .line 131
    :cond_53
    :try_start_53
    new-instance v2, Landroid/graphics/fonts/FontStyle;

    .line 132
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    const/16 v3, 0x2bc

    goto :goto_5e

    .line 133
    :cond_5c
    const/16 v3, 0x190

    .line 134
    :goto_5e
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_64

    const/4 v4, 0x1

    goto :goto_65

    .line 135
    :cond_64
    nop

    :goto_65
    invoke-direct {v2, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 137
    .local v2, "defaultStyle":Landroid/graphics/fonts/FontStyle;
    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 138
    invoke-virtual {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_79} :catch_7a

    .line 137
    return-object v1

    .line 140
    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v2    # "defaultStyle":Landroid/graphics/fonts/FontStyle;
    :catch_7a
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p4, "style"    # I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_6
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x1

    if-ge v5, v3, :cond_67

    aget-object v7, p3, v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_91

    .line 66
    .local v7, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :try_start_e
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v1, v8, v9, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 68
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v8, :cond_20

    .line 82
    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_63
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_91

    .line 69
    :cond_1f
    goto :goto_64

    .line 71
    :cond_20
    :try_start_20
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v9, v8}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 72
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    .line 73
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_34

    goto :goto_35

    .line 74
    :cond_34
    const/4 v6, 0x0

    .line 73
    :goto_35
    invoke-virtual {v9, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 75
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    .line 77
    .local v6, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v0, :cond_4e

    .line 78
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v9, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v9

    goto :goto_51

    .line 80
    :cond_4e
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_57

    .line 82
    .end local v6    # "platformFont":Landroid/graphics/fonts/Font;
    :goto_51
    if-eqz v8, :cond_56

    :try_start_53
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_63
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_91

    .line 84
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_56
    goto :goto_64

    .line 66
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_57
    move-exception v6

    if-eqz v8, :cond_62

    :try_start_5a
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v9

    :try_start_5f
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_62
    :goto_62
    throw v6
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_91

    .line 82
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_63
    move-exception v6

    .line 65
    .end local v7    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 86
    :cond_67
    if-nez v0, :cond_6a

    .line 87
    return-object v2

    .line 89
    :cond_6a
    :try_start_6a
    new-instance v3, Landroid/graphics/fonts/FontStyle;

    .line 90
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_73

    const/16 v5, 0x2bc

    goto :goto_75

    .line 91
    :cond_73
    const/16 v5, 0x190

    .line 92
    :goto_75
    and-int/lit8 v7, p4, 0x2

    if-eqz v7, :cond_7b

    const/4 v4, 0x1

    goto :goto_7c

    .line 93
    :cond_7b
    nop

    :goto_7c
    invoke-direct {v3, v5, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 95
    .local v3, "defaultStyle":Landroid/graphics/fonts/FontStyle;
    new-instance v4, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 96
    invoke-virtual {v4, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_90} :catch_91

    .line 95
    return-object v2

    .line 98
    .end local v3    # "defaultStyle":Landroid/graphics/fonts/FontStyle;
    :catch_91
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "family":Landroid/graphics/fonts/FontFamily;
    const/4 v1, 0x0

    .line 155
    .local v1, "font":Landroid/graphics/fonts/Font;
    :try_start_2
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v2

    move-object v1, v2

    .line 156
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    move-object v0, v2

    .line 157
    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 159
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    .line 157
    return-object v2

    .line 161
    :catch_28
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 5
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "style"    # I

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
