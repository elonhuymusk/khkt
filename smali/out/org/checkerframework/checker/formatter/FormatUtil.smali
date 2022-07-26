.class public Lorg/checkerframework/checker/formatter/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    }
.end annotation


# static fields
.field private static final formatSpecifier:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static fsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asFormat(Ljava/lang/String;[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljava/lang/String;
    .registers 7
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "cc"    # [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/formatter/qual/ReturnsFormat;
    .end annotation

    .line 43
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 44
    .local v0, "fcc":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_20

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 49
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    if-ne v2, v3, :cond_15

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 50
    :cond_15
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;

    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;-><init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V

    throw v2

    .line 54
    .end local v1    # "i":I
    :cond_1f
    return-object p0

    .line 45
    :cond_20
    new-instance v1, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;

    array-length v2, p1

    array-length v3, v0

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;-><init>(II)V

    throw v1
.end method

.method private static conversionCharFromFormat(Ljava/util/regex/Matcher;)C
    .registers 4
    .param p0, "m"    # Ljava/util/regex/Matcher;

    .line 129
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "dt":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 131
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 133
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 13
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, "last":I
    const/4 v1, -0x1

    .line 74
    .local v1, "lasto":I
    const/4 v2, -0x1

    .line 76
    .local v2, "maxindex":I
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    move-result-object v3

    .line 77
    .local v3, "cs":[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v4, "conv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v5, :cond_52

    aget-object v7, v3, v6

    .line 80
    .local v7, "c":Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->index()I

    move-result v8

    .line 81
    .local v8, "index":I
    packed-switch v8, :pswitch_data_76

    .line 89
    add-int/lit8 v0, v8, -0x1

    goto :goto_24

    .line 85
    :pswitch_1f
    add-int/lit8 v1, v1, 0x1

    .line 86
    move v0, v1

    .line 87
    goto :goto_24

    .line 83
    :pswitch_23
    nop

    .line 92
    :goto_24
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 93
    nop

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_44

    :cond_42
    sget-object v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 97
    :goto_44
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->category()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v11

    .line 95
    invoke-static {v10, v11}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v10

    .line 93
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v7    # "c":Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    .end local v8    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 100
    :cond_52
    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 101
    .local v5, "res":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    if-gt v6, v2, :cond_75

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_70

    :cond_6e
    sget-object v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_70
    aput-object v7, v5, v6

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 104
    .end local v6    # "i":I
    :cond_75
    return-object v5

    :pswitch_data_76
    .packed-switch -0x1
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private static indexFromFormat(Ljava/util/regex/Matcher;)I
    .registers 5
    .param p0, "m"    # Ljava/util/regex/Matcher;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    goto :goto_30

    .line 119
    .end local v0    # "index":I
    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 120
    const/4 v0, -0x1

    .restart local v0    # "index":I
    goto :goto_30

    .line 122
    .end local v0    # "index":I
    :cond_2f
    const/4 v0, 0x0

    .line 125
    .restart local v0    # "index":I
    :goto_30
    return v0
.end method

.method private static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    .registers 6
    .param p0, "format"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "cs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;>;"
    sget-object v1, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 140
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 141
    invoke-static {v1}, Lorg/checkerframework/checker/formatter/FormatUtil;->conversionCharFromFormat(Ljava/util/regex/Matcher;)C

    move-result v2

    .line 142
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_34

    .line 147
    new-instance v3, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/FormatUtil;->indexFromFormat(Ljava/util/regex/Matcher;)I

    move-result v4

    invoke-direct {v3, v2, v4}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;-><init>(CI)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 145
    :sswitch_25
    nop

    .line 149
    .end local v2    # "c":C
    :goto_26
    goto :goto_b

    .line 150
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    return-object v2

    :sswitch_data_34
    .sparse-switch
        0x25 -> :sswitch_25
        0x6e -> :sswitch_25
    .end sparse-switch
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "unused":Ljava/lang/String;
    return-void
.end method
