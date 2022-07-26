.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;,
        Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 11
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->parse(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    move-result-object v0

    .line 45
    .local v0, "cs":[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    const/4 v1, -0x1

    .line 46
    .local v1, "maxIndex":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v2, "conv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_41

    aget-object v5, v0, v4

    .line 49
    .local v5, "c":Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    iget v6, v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;->index:I

    .line 50
    .local v6, "index":I
    nop

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;->category:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_33

    :cond_31
    sget-object v9, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 52
    :goto_33
    invoke-static {v8, v9}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->intersect(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v8

    .line 50
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 48
    .end local v5    # "c":Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 60
    :cond_41
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 61
    .local v3, "res":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    if-gt v4, v1, :cond_64

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_5f

    :cond_5d
    sget-object v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    :goto_5f
    aput-object v5, v3, v4

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 64
    .end local v4    # "i":I
    :cond_64
    return-object v3
.end method

.method public static varargs hasFormat(Ljava/lang/String;[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z
    .registers 7
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "cc"    # [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .annotation runtime Lorg/checkerframework/checker/i18nformatter/qual/I18nChecksFormat;
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v0

    .line 79
    .local v0, "fcc":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    array-length v1, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    .line 80
    return v3

    .line 83
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 84
    aget-object v2, p1, v1

    aget-object v4, v0, v1

    invoke-static {v2, v4}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->isSubsetOf(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 85
    return v3

    .line 83
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 88
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method public static isFormat(Ljava/lang/String;)Z
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/i18nformatter/qual/I18nValidFormat;
    .end annotation

    .line 94
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_6

    .line 97
    nop

    .line 98
    const/4 v0, 0x1

    return v0

    .line 95
    :catch_6
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    return-void
.end method
