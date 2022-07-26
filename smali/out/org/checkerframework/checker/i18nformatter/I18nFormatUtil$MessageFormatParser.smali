.class Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageFormatParser"
.end annotation


# static fields
.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static argumentIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static locale:Ljava/util/Locale;

.field public static maxOffset:I

.field private static numFormat:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 148
    const-string v0, ""

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "time"

    const-string v4, "choice"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 157
    const-string v1, "currency"

    const-string v2, "percent"

    const-string v3, "integer"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 161
    const-string v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPattern(Ljava/lang/String;)V
    .registers 13
    .param p0, "pattern"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 182
    .local v0, "segments":[Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "part":I
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "inQuote":Z
    const/4 v4, 0x0

    .line 188
    .local v4, "braceStack":I
    const/4 v5, -0x1

    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 189
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_cb

    .line 190
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 191
    .local v7, "ch":C
    const/16 v8, 0x27

    const/4 v9, 0x1

    if-nez v1, :cond_61

    .line 192
    if-ne v7, v8, :cond_46

    .line 193
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_3e

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3e

    .line 194
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c8

    .line 197
    :cond_3e
    if-nez v3, :cond_42

    const/4 v8, 0x1

    goto :goto_43

    :cond_42
    const/4 v8, 0x0

    :goto_43
    move v3, v8

    goto/16 :goto_c8

    .line 199
    :cond_46
    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5a

    if-nez v3, :cond_5a

    .line 200
    const/4 v1, 0x1

    .line 201
    aget-object v8, v0, v9

    if-nez v8, :cond_c8

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v8, v0, v9

    goto/16 :goto_c8

    .line 205
    :cond_5a
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c8

    .line 208
    :cond_61
    if-eqz v3, :cond_6c

    .line 209
    aget-object v10, v0, v1

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    if-ne v7, v8, :cond_c8

    .line 211
    const/4 v3, 0x0

    goto :goto_c8

    .line 214
    :cond_6c
    const/4 v8, 0x3

    const/4 v10, 0x2

    sparse-switch v7, :sswitch_data_dc

    .line 253
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 229
    :sswitch_77
    if-nez v4, :cond_8c

    .line 230
    const/4 v1, 0x0

    .line 231
    sget v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    invoke-static {v6, v11, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->makeFormat(II[Ljava/lang/StringBuilder;)V

    .line 232
    sget v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    add-int/2addr v11, v9

    sput v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    .line 234
    const/4 v11, 0x0

    aput-object v11, v0, v9

    .line 235
    aput-object v11, v0, v10

    .line 236
    aput-object v11, v0, v8

    goto :goto_c8

    .line 238
    :cond_8c
    add-int/lit8 v4, v4, -0x1

    .line 239
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    goto :goto_c8

    .line 225
    :sswitch_94
    add-int/lit8 v4, v4, 0x1

    .line 226
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    goto :goto_c8

    .line 216
    :sswitch_9c
    if-ge v1, v8, :cond_ac

    .line 217
    add-int/lit8 v1, v1, 0x1

    aget-object v8, v0, v1

    if-nez v8, :cond_c8

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v8, v0, v1

    goto :goto_c8

    .line 221
    :cond_ac
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    goto :goto_c8

    .line 249
    :sswitch_b2
    const/4 v3, 0x1

    .line 250
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    goto :goto_c8

    .line 244
    :sswitch_b9
    if-ne v1, v10, :cond_c3

    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_c8

    .line 245
    :cond_c3
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .end local v7    # "ch":C
    :cond_c8
    :goto_c8
    add-int/2addr v6, v9

    goto/16 :goto_14

    .line 259
    .end local v6    # "i":I
    :cond_cb
    if-nez v4, :cond_da

    if-nez v1, :cond_d0

    goto :goto_da

    .line 260
    :cond_d0
    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unmatched braces in the pattern"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_da
    :goto_da
    return-void

    nop

    :sswitch_data_dc
    .sparse-switch
        0x20 -> :sswitch_b9
        0x27 -> :sswitch_b2
        0x2c -> :sswitch_9c
        0x7b -> :sswitch_94
        0x7d -> :sswitch_77
    .end sparse-switch
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 366
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 367
    return v0

    .line 365
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    .end local v0    # "i":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "ls":Ljava/lang/String;
    if-eq v0, p0, :cond_2c

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 375
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 376
    return v1

    .line 374
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 380
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method private static makeFormat(II[Ljava/lang/StringBuilder;)V
    .registers 13
    .param p0, "position"    # I
    .param p1, "offsetNumber"    # I
    .param p2, "textSegments"    # [Ljava/lang/StringBuilder;

    .line 267
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 268
    .local v0, "segments":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_17

    .line 269
    aget-object v2, p2, v1

    .line 270
    .local v2, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_10
    const-string v3, ""

    :goto_12
    aput-object v3, v0, v1

    .line 268
    .end local v2    # "oneseg":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 276
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x1

    :try_start_18
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1e} :catch_10c

    .line 281
    .local v1, "argumentNumber":I
    nop

    .line 282
    if-ltz v1, :cond_f5

    .line 286
    sget v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 287
    .local v2, "oldMaxOffset":I
    sput p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 288
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, "category":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_ed

    .line 293
    aget-object v5, v0, v4

    sget-object v6, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, "type":I
    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_126

    .line 354
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 355
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown format type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 337
    :pswitch_5f
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8f

    .line 344
    :try_start_67
    new-instance v4, Ljava/text/ChoiceFormat;

    aget-object v7, v0, v6

    invoke-direct {v4, v7}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_73

    .line 350
    nop

    .line 351
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 352
    goto/16 :goto_ec

    .line 345
    :catch_73
    move-exception v4

    .line 346
    .local v4, "e":Ljava/lang/Exception;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 348
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choice Pattern incorrect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 338
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Choice Pattern requires Subformat Pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :pswitch_a8
    aget-object v4, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 322
    .local v4, "mod":I
    if-ltz v4, :cond_b6

    array-length v7, v7

    if-ge v4, v7, :cond_b6

    goto :goto_c0

    .line 327
    :cond_b6
    :try_start_b6
    new-instance v7, Ljava/text/SimpleDateFormat;

    aget-object v6, v0, v6

    sget-object v8, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_bf} :catch_c3

    .line 332
    nop

    .line 334
    :goto_c0
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 335
    goto :goto_ec

    .line 328
    :catch_c3
    move-exception v6

    .line 329
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 331
    throw v6

    .line 299
    .end local v4    # "mod":I
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_c7
    aget-object v4, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_134

    .line 307
    :try_start_d2
    new-instance v4, Ljava/text/DecimalFormat;

    goto :goto_d6

    .line 304
    :pswitch_d5
    goto :goto_e2

    .line 307
    :goto_d6
    aget-object v6, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 309
    invoke-static {v7}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_e1} :catch_e5

    .line 314
    nop

    .line 317
    :goto_e2
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 318
    goto :goto_ec

    .line 310
    :catch_e5
    move-exception v4

    .line 311
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 313
    throw v4

    .line 296
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_e9
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 297
    nop

    .line 358
    .end local v5    # "type":I
    :goto_ec
    goto :goto_ef

    .line 359
    :cond_ed
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 361
    :goto_ef
    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-void

    .line 283
    .end local v2    # "oldMaxOffset":I
    .end local v3    # "category":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_f5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative argument number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v1    # "argumentNumber":I
    :catch_10c
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t parse argument number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_c7
        :pswitch_a8
        :pswitch_a8
        :pswitch_5f
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    .line 168
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 169
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->applyPattern(Ljava/lang/String;)V

    .line 171
    sget v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    new-array v0, v0, [Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    .line 172
    .local v0, "ret":[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    sget v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    if-ge v1, v2, :cond_40

    .line 173
    new-instance v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;-><init>(ILorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)V

    aput-object v2, v0, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 175
    .end local v1    # "i":I
    :cond_40
    return-object v0
.end method
