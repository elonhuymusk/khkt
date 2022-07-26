.class Landroidx/versionedparcelable/VersionedParcelStream;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_BOOLEAN_ARRAY:I = 0x6

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_DOUBLE_ARRAY:I = 0x8

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_FLOAT_ARRAY:I = 0xe

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_INT_ARRAY:I = 0xa

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_LONG_ARRAY:I = 0xc

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final TYPE_SUB_BUNDLE:I = 0x1

.field private static final TYPE_SUB_PERSISTABLE_BUNDLE:I = 0x2

.field private static final UTF_16:Ljava/nio/charset/Charset;


# instance fields
.field mCount:I

.field private mCurrentInput:Ljava/io/DataInputStream;

.field private mCurrentOutput:Ljava/io/DataOutputStream;

.field private mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

.field private mFieldId:I

.field mFieldSize:I

.field private mIgnoreParcelables:Z

.field private final mMasterInput:Ljava/io/DataInputStream;

.field private final mMasterOutput:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .line 76
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p3, "readCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p4, "writeCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p5, "parcelizerCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-direct {p0, p3, p4, p5}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    .line 73
    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    .line 85
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Landroidx/versionedparcelable/VersionedParcelStream$1;

    invoke-direct {v2, p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream$1;-><init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    .line 120
    if-eqz p2, :cond_23

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_23
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    .line 121
    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 122
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 123
    return-void
.end method

.method private readObject(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "b"    # Landroid/os/Bundle;

    .line 489
    packed-switch p1, :pswitch_data_98

    .line 536
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :pswitch_1a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloatArray()[F

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 534
    goto/16 :goto_96

    .line 530
    :pswitch_23
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloat()F

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 531
    goto/16 :goto_96

    .line 527
    :pswitch_2c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLongArray()[J

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 528
    goto :goto_96

    .line 524
    :pswitch_34
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 525
    goto :goto_96

    .line 521
    :pswitch_3c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readIntArray()[I

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 522
    goto :goto_96

    .line 518
    :pswitch_44
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    goto :goto_96

    .line 515
    :pswitch_4c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDoubleArray()[D

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 516
    goto :goto_96

    .line 512
    :pswitch_54
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 513
    goto :goto_96

    .line 509
    :pswitch_5c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBooleanArray()[Z

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 510
    goto :goto_96

    .line 506
    :pswitch_64
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    goto :goto_96

    .line 503
    :pswitch_6c
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    goto :goto_96

    .line 500
    :pswitch_79
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    goto :goto_96

    .line 497
    :pswitch_81
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 498
    goto :goto_96

    .line 494
    :pswitch_89
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 495
    goto :goto_96

    .line 491
    :pswitch_91
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 492
    nop

    .line 538
    :goto_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_91
        :pswitch_89
        :pswitch_81
        :pswitch_79
        :pswitch_6c
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method private writeObject(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 442
    if-nez p1, :cond_8

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    goto/16 :goto_f8

    .line 444
    :cond_8
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_18

    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 446
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_f8

    .line 447
    :cond_18
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 448
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 449
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    goto/16 :goto_f8

    .line 450
    :cond_28
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 451
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 452
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_f8

    .line 453
    :cond_3a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4e

    .line 454
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 455
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBoolean(Z)V

    goto/16 :goto_f8

    .line 456
    :cond_4e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_60

    .line 457
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 458
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBooleanArray([Z)V

    goto/16 :goto_f8

    .line 459
    :cond_60
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_74

    .line 460
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 461
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDouble(D)V

    goto/16 :goto_f8

    .line 462
    :cond_74
    instance-of v0, p1, [D

    if-eqz v0, :cond_87

    .line 463
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 464
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDoubleArray([D)V

    goto/16 :goto_f8

    .line 465
    :cond_87
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_9b

    .line 466
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 467
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    goto :goto_f8

    .line 468
    :cond_9b
    instance-of v0, p1, [I

    if-eqz v0, :cond_ad

    .line 469
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 470
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeIntArray([I)V

    goto :goto_f8

    .line 471
    :cond_ad
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_c1

    .line 472
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 473
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLong(J)V

    goto :goto_f8

    .line 474
    :cond_c1
    instance-of v0, p1, [J

    if-eqz v0, :cond_d3

    .line 475
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 476
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLongArray([J)V

    goto :goto_f8

    .line 477
    :cond_d3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_e7

    .line 478
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 479
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloat(F)V

    goto :goto_f8

    .line 480
    :cond_e7
    instance-of v0, p1, [F

    if-eqz v0, :cond_f9

    .line 481
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 482
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloatArray([F)V

    .line 486
    :goto_f8
    return-void

    .line 484
    :cond_f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeField()V
    .registers 3

    .line 142
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    if-eqz v0, :cond_1d

    .line 144
    :try_start_4
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 145
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->flushField()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_16

    .line 149
    :cond_11
    nop

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    goto :goto_1d

    .line 147
    :catch_16
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .registers 8

    .line 156
    new-instance v6, Landroidx/versionedparcelable/VersionedParcelStream;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mReadCache:Landroidx/collection/ArrayMap;

    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mWriteCache:Landroidx/collection/ArrayMap;

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mParcelizerCache:Landroidx/collection/ArrayMap;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-object v6
.end method

.method public isStream()Z
    .registers 2

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public readBoolean()Z
    .registers 3

    .line 402
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 403
    :catch_7
    move-exception v0

    .line 404
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readBundle()Landroid/os/Bundle;
    .registers 6

    .line 429
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v0

    .line 430
    .local v0, "size":I
    if-gez v0, :cond_8

    .line 431
    const/4 v1, 0x0

    return-object v1

    .line 433
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v1, "b":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1e

    .line 435
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v4

    invoke-direct {p0, v4, v3, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->readObject(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 434
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 438
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method public readByteArray()[B
    .registers 4

    .line 381
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 382
    .local v0, "len":I
    if-lez v0, :cond_10

    .line 383
    new-array v1, v0, [B

    .line 384
    .local v1, "bytes":[B
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_12

    .line 385
    return-object v1

    .line 387
    .end local v1    # "bytes":[B
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 389
    .end local v0    # "len":I
    :catch_12
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public readDouble()D
    .registers 3

    .line 356
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 357
    :catch_7
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readField(I)Z
    .registers 7
    .param p1, "fieldId"    # I

    .line 164
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    if-ne v1, p1, :cond_7

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_16

    .line 168
    return v0

    .line 170
    :cond_16
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iget v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-ge v1, v2, :cond_23

    .line 171
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    sub-int/2addr v2, v1

    int-to-long v1, v2

    invoke-virtual {v3, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 173
    :cond_23
    const/4 v1, -0x1

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    .line 174
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 175
    .local v1, "fieldInfo":I
    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 176
    const v2, 0xffff

    and-int v3, v1, v2

    .line 177
    .local v3, "size":I
    if-ne v3, v2, :cond_3c

    .line 178
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v3, v4

    .line 180
    :cond_3c
    shr-int/lit8 v4, v1, 0x10

    and-int/2addr v2, v4

    .line 181
    .local v2, "id":I
    iput v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    .line 182
    iput v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_43} :catch_44

    .line 183
    .end local v1    # "fieldInfo":I
    .end local v2    # "id":I
    .end local v3    # "size":I
    goto :goto_0

    .line 184
    :catch_44
    move-exception v1

    .line 186
    return v0
.end method

.method public readFloat()F
    .registers 3

    .line 347
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 348
    :catch_7
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .registers 3

    .line 329
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 330
    :catch_7
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLong()J
    .registers 3

    .line 338
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 339
    :catch_7
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 365
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 366
    .local v0, "len":I
    if-lez v0, :cond_17

    .line 367
    new-array v1, v0, [B

    .line 368
    .local v1, "bytes":[B
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 369
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_19

    return-object v2

    .line 371
    .end local v1    # "bytes":[B
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 373
    .end local v0    # "len":I
    :catch_19
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .registers 2

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOutputField(I)V
    .registers 4
    .param p1, "fieldId"    # I

    .line 191
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    .line 192
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 193
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 194
    return-void
.end method

.method public setSerializationFlags(ZZ)V
    .registers 5
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .line 134
    if-eqz p1, :cond_5

    .line 137
    iput-boolean p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    .line 138
    return-void

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serialization of this object is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBoolean(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 288
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "val"    # Landroid/os/Bundle;

    .line 411
    if-eqz p1, :cond_2b

    .line 412
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 413
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 414
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 417
    .local v3, "o":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcelStream;->writeObject(Ljava/lang/Object;)V

    .line 418
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_13

    .line 419
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2a
    goto :goto_31

    .line 420
    :cond_2b
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_31} :catch_33

    .line 424
    :goto_31
    nop

    .line 425
    return-void

    .line 422
    :catch_33
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeByteArray([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 199
    if-eqz p1, :cond_e

    .line 200
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_14

    .line 203
    :cond_e
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_16

    .line 207
    :goto_14
    nop

    .line 208
    return-void

    .line 205
    :catch_16
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeByteArray([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 213
    if-eqz p1, :cond_d

    .line 214
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_13

    .line 217
    :cond_d
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_15

    .line 221
    :goto_13
    nop

    .line 222
    return-void

    .line 219
    :catch_15
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 226
    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_5

    .line 229
    return-void

    .line 227
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CharSequence cannot be written to an OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeDouble(D)V
    .registers 5
    .param p1, "val"    # D

    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 266
    nop

    .line 268
    return-void

    .line 264
    :catch_7
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "val"    # F

    .line 253
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 256
    nop

    .line 258
    return-void

    .line 254
    :catch_7
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt(I)V
    .registers 4
    .param p1, "val"    # I

    .line 234
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_7
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeLong(J)V
    .registers 5
    .param p1, "val"    # J

    .line 243
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 246
    nop

    .line 248
    return-void

    .line 244
    :catch_7
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 303
    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_5

    .line 306
    return-void

    .line 304
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parcelables cannot be written to an OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .line 273
    if-eqz p1, :cond_14

    .line 274
    :try_start_2
    sget-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 275
    .local v0, "bytes":[B
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 276
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 277
    .end local v0    # "bytes":[B
    goto :goto_1a

    .line 278
    :cond_14
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1c

    .line 282
    :goto_1a
    nop

    .line 283
    return-void

    .line 280
    :catch_1c
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "val"    # Landroid/os/IBinder;

    .line 296
    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_5

    .line 299
    return-void

    .line 297
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Binders cannot be written to an OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .registers 4
    .param p1, "val"    # Landroid/os/IInterface;

    .line 310
    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_5

    .line 313
    return-void

    .line 311
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Binders cannot be written to an OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
