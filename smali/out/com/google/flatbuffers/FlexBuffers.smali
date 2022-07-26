.class public Lcom/google/flatbuffers/FlexBuffers;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlexBuffers$Unsigned;,
        Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;,
        Lcom/google/flatbuffers/FlexBuffers$KeyVector;,
        Lcom/google/flatbuffers/FlexBuffers$TypedVector;,
        Lcom/google/flatbuffers/FlexBuffers$Vector;,
        Lcom/google/flatbuffers/FlexBuffers$Map;,
        Lcom/google/flatbuffers/FlexBuffers$Key;,
        Lcom/google/flatbuffers/FlexBuffers$Blob;,
        Lcom/google/flatbuffers/FlexBuffers$Sized;,
        Lcom/google/flatbuffers/FlexBuffers$Object;,
        Lcom/google/flatbuffers/FlexBuffers$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

.field public static final FBT_BLOB:I = 0x19

.field public static final FBT_BOOL:I = 0x1a

.field public static final FBT_FLOAT:I = 0x3

.field public static final FBT_INDIRECT_FLOAT:I = 0x8

.field public static final FBT_INDIRECT_INT:I = 0x6

.field public static final FBT_INDIRECT_UINT:I = 0x7

.field public static final FBT_INT:I = 0x1

.field public static final FBT_KEY:I = 0x4

.field public static final FBT_MAP:I = 0x9

.field public static final FBT_NULL:I = 0x0

.field public static final FBT_STRING:I = 0x5

.field public static final FBT_UINT:I = 0x2

.field public static final FBT_VECTOR:I = 0xa

.field public static final FBT_VECTOR_BOOL:I = 0x24

.field public static final FBT_VECTOR_FLOAT:I = 0xd

.field public static final FBT_VECTOR_FLOAT2:I = 0x12

.field public static final FBT_VECTOR_FLOAT3:I = 0x15

.field public static final FBT_VECTOR_FLOAT4:I = 0x18

.field public static final FBT_VECTOR_INT:I = 0xb

.field public static final FBT_VECTOR_INT2:I = 0x10

.field public static final FBT_VECTOR_INT3:I = 0x13

.field public static final FBT_VECTOR_INT4:I = 0x16

.field public static final FBT_VECTOR_KEY:I = 0xe

.field public static final FBT_VECTOR_STRING_DEPRECATED:I = 0xf

.field public static final FBT_VECTOR_UINT:I = 0xc

.field public static final FBT_VECTOR_UINT2:I = 0x11

.field public static final FBT_VECTOR_UINT3:I = 0x14

.field public static final FBT_VECTOR_UINT4:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 45
    nop

    .line 103
    new-instance v0, Lcom/google/flatbuffers/ArrayReadWriteBuf;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-direct {v0, v2, v1}, Lcom/google/flatbuffers/ArrayReadWriteBuf;-><init>([BI)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/flatbuffers/ReadBuf;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/flatbuffers/ReadBuf;II)I
    .registers 4
    .param p0, "x0"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readInt(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/flatbuffers/ReadBuf;II)I
    .registers 4
    .param p0, "x0"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->indirect(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/flatbuffers/ReadBuf;II)J
    .registers 5
    .param p0, "x0"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/flatbuffers/ReadBuf;II)D
    .registers 5
    .param p0, "x0"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readDouble(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/flatbuffers/ReadBuf;II)J
    .registers 5
    .param p0, "x0"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRoot(Lcom/google/flatbuffers/ReadBuf;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 5
    .param p0, "buffer"    # Lcom/google/flatbuffers/ReadBuf;

    .line 214
    invoke-interface {p0}, Lcom/google/flatbuffers/ReadBuf;->limit()I

    move-result v0

    .line 215
    .local v0, "end":I
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v1

    .line 216
    .local v1, "byteWidth":I
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    .line 217
    .local v2, "packetType":I
    sub-int/2addr v0, v1

    .line 218
    new-instance v3, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v3
.end method

.method public static getRoot(Ljava/nio/ByteBuffer;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/flatbuffers/ArrayReadWriteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/flatbuffers/ArrayReadWriteBuf;-><init>([BI)V

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/google/flatbuffers/ByteBufferReadWriteBuf;

    invoke-direct {v0, p0}, Lcom/google/flatbuffers/ByteBufferReadWriteBuf;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_19
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->getRoot(Lcom/google/flatbuffers/ReadBuf;)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v0

    return-object v0
.end method

.method private static indirect(Lcom/google/flatbuffers/ReadBuf;II)I
    .registers 7
    .param p0, "bb"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "offset"    # I
    .param p2, "byteWidth"    # I

    .line 156
    int-to-long v0, p1

    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method static isTypeInline(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 122
    const/4 v0, 0x3

    if-le p0, v0, :cond_a

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method static isTypedVector(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 112
    const/16 v0, 0xb

    if-lt p0, v0, :cond_8

    const/16 v0, 0xf

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x24

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static isTypedVectorElementType(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 150
    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v1, 0x4

    if-le p0, v1, :cond_a

    :cond_6
    const/16 v1, 0x1a

    if-ne p0, v1, :cond_b

    :cond_a
    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static readDouble(Lcom/google/flatbuffers/ReadBuf;II)D
    .registers 5
    .param p0, "buff"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 187
    sparse-switch p2, :sswitch_data_12

    .line 190
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 189
    :sswitch_6
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 188
    :sswitch_b
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getFloat(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static readInt(Lcom/google/flatbuffers/ReadBuf;II)I
    .registers 5
    .param p0, "buff"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 172
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private static readLong(Lcom/google/flatbuffers/ReadBuf;II)J
    .registers 5
    .param p0, "buff"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 177
    sparse-switch p2, :sswitch_data_1e

    .line 182
    const-wide/16 v0, -0x1

    return-wide v0

    .line 181
    :sswitch_6
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 180
    :sswitch_b
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 179
    :sswitch_11
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getShort(I)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 178
    :sswitch_17
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_11
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static readUInt(Lcom/google/flatbuffers/ReadBuf;II)J
    .registers 5
    .param p0, "buff"    # Lcom/google/flatbuffers/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 161
    sparse-switch p2, :sswitch_data_28

    .line 166
    const-wide/16 v0, -0x1

    return-wide v0

    .line 165
    :sswitch_6
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 164
    :sswitch_b
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    .line 163
    :sswitch_14
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 162
    :sswitch_1e
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_14
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method static toTypedVector(II)I
    .registers 3
    .param p0, "type"    # I
    .param p1, "fixedLength"    # I

    .line 137
    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVectorElementType(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 138
    packed-switch p1, :pswitch_data_2a

    .line 144
    :pswitch_9
    goto :goto_1e

    .line 142
    :pswitch_a
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x16

    return v0

    .line 141
    :pswitch_f
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x13

    return v0

    .line 140
    :pswitch_14
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 139
    :pswitch_19
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0xb

    return v0

    .line 144
    :goto_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_9
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static toTypedVectorElementType(I)I
    .registers 2
    .param p0, "original_type"    # I

    .line 126
    add-int/lit8 v0, p0, -0xb

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
