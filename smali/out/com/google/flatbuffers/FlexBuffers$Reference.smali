.class public Lcom/google/flatbuffers/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;


# instance fields
.field private bb:Lcom/google/flatbuffers/ReadBuf;

.field private byteWidth:I

.field private end:I

.field private parentWidth:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 226
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;III)V
    .registers 13
    .param p1, "bb"    # Lcom/google/flatbuffers/ReadBuf;
    .param p2, "end"    # I
    .param p3, "parentWidth"    # I
    .param p4, "packedType"    # I

    .line 234
    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;IIII)V

    .line 235
    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;IIII)V
    .registers 6
    .param p1, "bb"    # Lcom/google/flatbuffers/ReadBuf;
    .param p2, "end"    # I
    .param p3, "parentWidth"    # I
    .param p4, "byteWidth"    # I
    .param p5, "type"    # I

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    .line 239
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    .line 240
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    .line 241
    iput p4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    .line 242
    iput p5, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    .line 243
    return-void
.end method

.method static synthetic access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 1

    .line 224
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-object v0
.end method


# virtual methods
.method public asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .registers 5

    .line 546
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 549
    :cond_d
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Blob;->empty()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 547
    :cond_12
    :goto_12
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .registers 8

    .line 559
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 560
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    invoke-interface {v0, v3}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 562
    :cond_15
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public asFloat()D
    .registers 4

    .line 457
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 459
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    .line 461
    :cond_10
    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_78

    .line 474
    return-wide v1

    .line 471
    :sswitch_16
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 462
    :sswitch_20
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    .line 468
    :sswitch_31
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 467
    :sswitch_43
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 470
    :sswitch_55
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 466
    :sswitch_5e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 463
    :sswitch_6a
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 469
    :sswitch_76
    return-wide v1

    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_76
        0x1 -> :sswitch_6a
        0x2 -> :sswitch_5e
        0x5 -> :sswitch_55
        0x6 -> :sswitch_43
        0x7 -> :sswitch_31
        0x8 -> :sswitch_20
        0xa -> :sswitch_16
        0x1a -> :sswitch_5e
    .end sparse-switch
.end method

.method public asInt()I
    .registers 4

    .line 366
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 368
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    .line 370
    :cond_10
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_80

    .line 382
    return v1

    .line 379
    :sswitch_15
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    .line 378
    :sswitch_20
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    .line 375
    :sswitch_29
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 373
    :sswitch_3b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 371
    :sswitch_4d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    .line 377
    :sswitch_5e
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 374
    :sswitch_67
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 372
    :sswitch_73
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 376
    :sswitch_7f
    return v1

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_7f
        0x2 -> :sswitch_73
        0x3 -> :sswitch_67
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_4d
        0x7 -> :sswitch_3b
        0x8 -> :sswitch_29
        0xa -> :sswitch_20
        0x1a -> :sswitch_15
    .end sparse-switch
.end method

.method public asKey()Lcom/google/flatbuffers/FlexBuffers$Key;
    .registers 5

    .line 483
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 484
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 486
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->empty()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .registers 4

    .line 424
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 426
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 428
    :cond_10
    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_84

    .line 446
    return-wide v1

    .line 443
    :sswitch_16
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 442
    :sswitch_22
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 433
    :sswitch_2c
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 431
    :sswitch_3e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 429
    :sswitch_4f
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 437
    :sswitch_60
    :try_start_60
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_68} :catch_69

    return-wide v0

    .line 438
    :catch_69
    move-exception v0

    .line 439
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide v1

    .line 432
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_6b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 430
    :sswitch_77
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 434
    :sswitch_82
    return-wide v1

    nop

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_82
        0x2 -> :sswitch_77
        0x3 -> :sswitch_6b
        0x5 -> :sswitch_60
        0x6 -> :sswitch_4f
        0x7 -> :sswitch_3e
        0x8 -> :sswitch_2c
        0xa -> :sswitch_22
        0x1a -> :sswitch_16
    .end sparse-switch
.end method

.method public asMap()Lcom/google/flatbuffers/FlexBuffers$Map;
    .registers 5

    .line 517
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 518
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 520
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Map;->empty()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 5

    .line 495
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 496
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    .line 497
    .local v0, "start":I
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    sub-int v3, v0, v2

    invoke-static {v1, v3, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v1

    long-to-int v2, v1

    .line 498
    .local v2, "size":I
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    invoke-interface {v1, v0, v2}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 500
    .end local v0    # "start":I
    .end local v2    # "size":I
    :cond_22
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 501
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    .line 502
    .restart local v0    # "start":I
    move v1, v0

    .line 503
    .local v1, "i":I
    :goto_33
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    invoke-interface {v2, v1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v2

    if-nez v2, :cond_44

    .line 504
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    sub-int v3, v1, v0

    invoke-interface {v2, v0, v3}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 502
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 508
    .end local v0    # "start":I
    .end local v1    # "i":I
    :cond_47
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .registers 4

    .line 395
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 397
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 399
    :cond_10
    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_82

    .line 411
    return-wide v1

    .line 408
    :sswitch_16
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 407
    :sswitch_22
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 404
    :sswitch_2c
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 400
    :sswitch_3e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 402
    :sswitch_4f
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 406
    :sswitch_60
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 403
    :sswitch_69
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 401
    :sswitch_75
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 405
    :sswitch_80
    return-wide v1

    nop

    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_80
        0x1 -> :sswitch_75
        0x3 -> :sswitch_69
        0x5 -> :sswitch_60
        0x6 -> :sswitch_4f
        0x7 -> :sswitch_3e
        0x8 -> :sswitch_2c
        0xa -> :sswitch_22
        0x1a -> :sswitch_16
    .end sparse-switch
.end method

.method public asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 6

    .line 529
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isVector()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 530
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 531
    :cond_18
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_31

    .line 533
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v0

    .line 534
    :cond_31
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 535
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v4}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVectorElementType(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v0

    .line 537
    :cond_4f
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Vector;->empty()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return v0
.end method

.method public isBlob()Z
    .registers 3

    .line 354
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 266
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFloat()Z
    .registers 3

    .line 290
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isInt()Z
    .registers 4

    .line 298
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isIntOrUInt()Z
    .registers 2

    .line 282
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isKey()Z
    .registers 3

    .line 322
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 346
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 2

    .line 258
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumeric()Z
    .registers 2

    .line 274
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isString()Z
    .registers 3

    .line 314
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTypedVector()Z
    .registers 2

    .line 338
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    return v0
.end method

.method public isUInt()Z
    .registers 3

    .line 306
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isVector()Z
    .registers 3

    .line 330
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 580
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_88

    .line 623
    :pswitch_7
    return-object p1

    .line 603
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1

    .line 601
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_19
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not_implemented:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :pswitch_32
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1

    .line 599
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 597
    :pswitch_43
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asMap()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 595
    :pswitch_4c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 593
    :pswitch_5a
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asKey()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0

    .line 591
    :pswitch_69
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p1

    .line 588
    :pswitch_71
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 585
    :pswitch_79
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 582
    :pswitch_81
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_81
        :pswitch_79
        :pswitch_71
        :pswitch_69
        :pswitch_5a
        :pswitch_4c
        :pswitch_79
        :pswitch_71
        :pswitch_69
        :pswitch_43
        :pswitch_3a
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_32
    .end packed-switch
.end method
