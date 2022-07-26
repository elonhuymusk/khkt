.class public final Lorg/checkerframework/checker/signedness/SignednessUtil;
.super Ljava/lang/Object;
.source "SignednessUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteFromDouble(D)B
    .registers 5
    .param p0, "d"    # D

    .line 626
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_9

    .line 627
    double-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 626
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static byteFromFloat(F)B
    .registers 2
    .param p0, "f"    # F

    .line 598
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_8

    .line 599
    float-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 598
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static compareUnsigned(BB)I
    .registers 4
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 408
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result v0

    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->compareUnsigned(II)I

    move-result v0

    return v0
.end method

.method public static compareUnsigned(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 382
    const/high16 v0, -0x80000000

    add-int v1, p0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static compareUnsigned(JJ)I
    .registers 8
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 368
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static compareUnsigned(SS)I
    .registers 4
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 395
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result v0

    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->compareUnsigned(II)I

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;)B
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;I)B
    .registers 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 80
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/IntBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "i"    # I

    .line 160
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[BII)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "bs"    # [B
    .param p2, "i"    # I
    .param p3, "l"    # I

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[B)V
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "bs"    # [B

    .line 354
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 355
    return-void
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)S
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static intFromDouble(D)I
    .registers 5
    .param p0, "d"    # D

    .line 640
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_8

    .line 641
    double-to-int v0, p0

    return v0

    .line 640
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static intFromFloat(F)I
    .registers 2
    .param p0, "f"    # F

    .line 612
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_7

    .line 613
    float-to-int v0, p0

    return v0

    .line 612
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static longFromDouble(D)J
    .registers 5
    .param p0, "d"    # D

    .line 647
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_8

    .line 648
    double-to-long v0, p0

    return-wide v0

    .line 647
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static longFromFloat(F)J
    .registers 3
    .param p0, "f"    # F

    .line 619
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_7

    .line 620
    float-to-long v0, p0

    return-wide v0

    .line 619
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;B)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "ubyte"    # B

    .line 100
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;IB)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ubyte"    # B

    .line 110
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .registers 3
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uint"    # I

    .line 120
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;II)Ljava/nio/IntBuffer;
    .registers 4
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "i"    # I
    .param p2, "uint"    # I

    .line 130
    invoke-virtual {p0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[I)Ljava/nio/IntBuffer;
    .registers 3
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uints"    # [I

    .line 140
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[III)Ljava/nio/IntBuffer;
    .registers 5
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uints"    # [I
    .param p2, "i"    # I
    .param p3, "l"    # I

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "uint"    # I

    .line 190
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "uint"    # I

    .line 200
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedLong(Ljava/nio/ByteBuffer;IJ)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ulong"    # J

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;IS)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ushort"    # S

    .line 180
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "ushort"    # S

    .line 170
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static readFullyUnsigned(Ljava/io/RandomAccessFile;[B)V
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 283
    return-void
.end method

.method public static readUnsigned(Ljava/io/RandomAccessFile;[BII)I
    .registers 5
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public static readUnsignedByte(Ljava/io/RandomAccessFile;)B
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    return v0
.end method

.method public static readUnsignedChar(Ljava/io/RandomAccessFile;)C
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v0

    return v0
.end method

.method public static readUnsignedInt(Ljava/io/RandomAccessFile;)I
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    return v0
.end method

.method public static readUnsignedLong(Ljava/io/RandomAccessFile;)J
    .registers 3
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUnsignedShort(Ljava/io/RandomAccessFile;)S
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    return v0
.end method

.method public static shortFromDouble(D)S
    .registers 5
    .param p0, "d"    # D

    .line 633
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_9

    .line 634
    double-to-int v0, p0

    int-to-short v0, v0

    return v0

    .line 633
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static shortFromFloat(F)S
    .registers 2
    .param p0, "f"    # F

    .line 605
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_8

    .line 606
    float-to-int v0, p0

    int-to-short v0, v0

    return v0

    .line 605
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toDouble(B)D
    .registers 3
    .param p0, "b"    # B

    .line 577
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(I)D
    .registers 3
    .param p0, "i"    # I

    .line 587
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(J)D
    .registers 4
    .param p0, "l"    # J

    .line 592
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(S)D
    .registers 3
    .param p0, "s"    # S

    .line 582
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(B)F
    .registers 3
    .param p0, "b"    # B

    .line 557
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(I)F
    .registers 3
    .param p0, "i"    # I

    .line 567
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(J)F
    .registers 3
    .param p0, "l"    # J

    .line 572
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(S)F
    .registers 3
    .param p0, "s"    # S

    .line 562
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .registers 7
    .param p0, "l"    # J

    .line 492
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_b

    .line 493
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 495
    :cond_b
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v2, v1

    .line 496
    .local v2, "upper":I
    long-to-int v1, p0

    .line 499
    .local v1, "lower":I
    invoke-static {v2}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 500
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 501
    invoke-static {v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 499
    return-object v0
.end method

.method public static toUnsignedInt(B)I
    .registers 2
    .param p0, "b"    # B

    .line 532
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toUnsignedInt(C)I
    .registers 2
    .param p0, "c"    # C

    .line 547
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toUnsignedInt(S)I
    .registers 2
    .param p0, "s"    # S

    .line 522
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static toUnsignedLong(B)J
    .registers 5
    .param p0, "b"    # B

    .line 527
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(C)J
    .registers 5
    .param p0, "c"    # C

    .line 542
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(I)J
    .registers 5
    .param p0, "i"    # I

    .line 512
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(S)J
    .registers 5
    .param p0, "s"    # S

    .line 517
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedShort(B)S
    .registers 2
    .param p0, "b"    # B

    .line 537
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static toUnsignedShort(C)S
    .registers 2
    .param p0, "c"    # C

    .line 552
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static toUnsignedString(B)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # B

    .line 473
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(BI)Ljava/lang/String;
    .registers 4
    .param p0, "b"    # B
    .param p1, "radix"    # I

    .line 480
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .line 441
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(II)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .line 452
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(J)Ljava/lang/String;
    .registers 3
    .param p0, "l"    # J

    .line 419
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(JI)Ljava/lang/String;
    .registers 4
    .param p0, "l"    # J
    .param p2, "radix"    # I

    .line 430
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(S)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # S

    .line 459
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(SI)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # S
    .param p1, "radix"    # I

    .line 466
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapUnsigned([B)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "array"    # [B

    .line 30
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrapUnsigned([BII)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 40
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static writeUnsigned(Ljava/io/RandomAccessFile;[BII)V
    .registers 4
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 294
    return-void
.end method

.method public static writeUnsignedByte(Ljava/io/RandomAccessFile;B)V
    .registers 3
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 304
    return-void
.end method

.method public static writeUnsignedChar(Ljava/io/RandomAccessFile;C)V
    .registers 3
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(C)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeChar(I)V

    .line 314
    return-void
.end method

.method public static writeUnsignedInt(Ljava/io/RandomAccessFile;I)V
    .registers 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 335
    return-void
.end method

.method public static writeUnsignedLong(Ljava/io/RandomAccessFile;J)V
    .registers 3
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 345
    return-void
.end method

.method public static writeUnsignedShort(Ljava/io/RandomAccessFile;S)V
    .registers 3
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 325
    return-void
.end method
