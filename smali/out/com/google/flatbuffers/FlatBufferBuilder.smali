.class public Lcom/google/flatbuffers/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;,
        Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;,
        Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

.field finished:Z

.field force_defaults:Z

.field minalign:I

.field nested:Z

.field num_vtables:I

.field object_start:I

.field space:I

.field final utf8:Lcom/google/flatbuffers/Utf8;

.field vector_num_elems:I

.field vtable:[I

.field vtable_in_use:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "initial_size"    # I

    .line 93
    sget-object v0, Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;->INSTANCE:Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)V

    .line 94
    return-void
.end method

.method public constructor <init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)V
    .registers 5
    .param p1, "initial_size"    # I
    .param p2, "bb_factory"    # Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 59
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)V
    .registers 7
    .param p1, "initial_size"    # I
    .param p2, "bb_factory"    # Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;
    .param p3, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p4, "utf8"    # Lcom/google/flatbuffers/Utf8;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 41
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 42
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    .line 44
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 45
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 46
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 47
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    .line 72
    if-gtz p1, :cond_1f

    .line 73
    const/4 p1, 0x1

    .line 75
    :cond_1f
    iput-object p2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 76
    if-eqz p3, :cond_30

    .line 77
    iput-object p3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 79
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_36

    .line 81
    :cond_30
    invoke-virtual {p2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 83
    :goto_36
    iput-object p4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8:Lcom/google/flatbuffers/Utf8;

    .line 84
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;

    .line 124
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-direct {v0}, Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)V
    .registers 5
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bb_factory"    # Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v1

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)V

    .line 114
    return-void
.end method

.method private dataStart()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 991
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    return v0
.end method

.method static growByteBuffer(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bb_factory"    # Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 240
    .local v0, "old_buf_size":I
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_28

    .line 242
    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_f

    :cond_d
    shl-int/lit8 v1, v0, 0x1

    .line 243
    .local v1, "new_buf_size":I
    :goto_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 245
    .local v2, "nbb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 246
    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 248
    return-object v2

    .line 241
    .end local v1    # "new_buf_size":I
    .end local v2    # "nbb":Ljava/nio/ByteBuffer;
    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isFieldPresent(Lcom/google/flatbuffers/Table;I)Z
    .registers 3
    .param p0, "table"    # Lcom/google/flatbuffers/Table;
    .param p1, "offset"    # I

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public Nested(I)V
    .registers 4
    .param p1, "obj"    # I

    .line 635
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 637
    return-void

    .line 636
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: struct must be serialized inline."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addBoolean(IZZ)V
    .registers 5
    .param p1, "o"    # I
    .param p2, "x"    # Z
    .param p3, "d"    # Z

    .line 697
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(Z)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addBoolean(Z)V
    .registers 4
    .param p1, "x"    # Z

    .line 360
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putBoolean(Z)V

    return-void
.end method

.method public addByte(B)V
    .registers 4
    .param p1, "x"    # B

    .line 367
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putByte(B)V

    return-void
.end method

.method public addByte(IBI)V
    .registers 5
    .param p1, "o"    # I
    .param p2, "x"    # B
    .param p3, "d"    # I

    .line 708
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addDouble(D)V
    .registers 5
    .param p1, "x"    # D

    .line 402
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->putDouble(D)V

    return-void
.end method

.method public addDouble(IDD)V
    .registers 7
    .param p1, "o"    # I
    .param p2, "x"    # D
    .param p4, "d"    # D

    .line 763
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_8

    cmpl-double v0, p2, p4

    if-eqz v0, :cond_e

    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->addDouble(D)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_e
    return-void
.end method

.method public addFloat(F)V
    .registers 4
    .param p1, "x"    # F

    .line 395
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putFloat(F)V

    return-void
.end method

.method public addFloat(IFD)V
    .registers 8
    .param p1, "o"    # I
    .param p2, "x"    # F
    .param p3, "d"    # D

    .line 752
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_9

    float-to-double v0, p2

    cmpl-double v2, v0, p3

    if-eqz v2, :cond_f

    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(F)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_f
    return-void
.end method

.method public addInt(I)V
    .registers 4
    .param p1, "x"    # I

    .line 381
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    return-void
.end method

.method public addInt(III)V
    .registers 5
    .param p1, "o"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 730
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addLong(IJJ)V
    .registers 7
    .param p1, "o"    # I
    .param p2, "x"    # J
    .param p4, "d"    # J

    .line 741
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_8

    cmp-long v0, p2, p4

    if-eqz v0, :cond_e

    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(J)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_e
    return-void
.end method

.method public addLong(J)V
    .registers 5
    .param p1, "x"    # J

    .line 388
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->putLong(J)V

    return-void
.end method

.method public addOffset(I)V
    .registers 4
    .param p1, "off"    # I

    .line 410
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 411
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v1

    if-gt p1, v1, :cond_15

    .line 412
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    .line 413
    .end local p1    # "off":I
    .local v1, "off":I
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    .line 414
    return-void

    .line 411
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addOffset(III)V
    .registers 5
    .param p1, "o"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 774
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addShort(ISI)V
    .registers 5
    .param p1, "o"    # I
    .param p2, "x"    # S
    .param p3, "d"    # I

    .line 719
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addShort(S)V
    .registers 4
    .param p1, "x"    # S

    .line 374
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putShort(S)V

    return-void
.end method

.method public addStruct(III)V
    .registers 4
    .param p1, "voffset"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 784
    if-eq p2, p3, :cond_8

    .line 785
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->Nested(I)V

    .line 786
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    .line 788
    :cond_8
    return-void
.end method

.method public clear()V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 218
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 220
    :goto_10
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    aput v1, v2, v0

    goto :goto_10

    .line 221
    :cond_1e
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 222
    iput-boolean v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 223
    iput-boolean v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    .line 224
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    .line 225
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 226
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 227
    return-void
.end method

.method public createByteVector(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 600
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 601
    .local v0, "length":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 602
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 603
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 604
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createByteVector([B)I
    .registers 5
    .param p1, "arr"    # [B

    .line 568
    array-length v0, p1

    .line 569
    .local v0, "length":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 570
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 571
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createByteVector([BII)I
    .registers 6
    .param p1, "arr"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 585
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 587
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public createSortedVectorOfTables(Lcom/google/flatbuffers/Table;[I)I
    .registers 4
    .param p2, "offsets"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/flatbuffers/Table;",
            ">(TT;[I)I"
        }
    .end annotation

    .line 526
    .local p1, "obj":Lcom/google/flatbuffers/Table;, "TT;"
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/google/flatbuffers/Table;->sortTables([ILjava/nio/ByteBuffer;)V

    .line 527
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createVectorOfTables([I)I

    move-result v0

    return v0
.end method

.method public createString(Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 538
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8:Lcom/google/flatbuffers/Utf8;

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 539
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    .line 540
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 541
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8:Lcom/google/flatbuffers/Utf8;

    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Lcom/google/flatbuffers/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createString(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "s"    # Ljava/nio/ByteBuffer;

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 554
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 556
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 557
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createUnintializedVector(III)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "elem_size"    # I
    .param p2, "num_elems"    # I
    .param p3, "alignment"    # I

    .line 494
    mul-int v0, p1, p2

    .line 495
    .local v0, "length":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 497
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    .local v1, "copy":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 502
    return-object v1
.end method

.method public createVectorOfTables([I)I
    .registers 4
    .param p1, "offsets"    # [I

    .line 512
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->notNested()V

    .line 513
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 514
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_15

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 515
    .end local v0    # "i":I
    :cond_15
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public dataBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 976
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 977
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public endTable()I
    .registers 14

    .line 807
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_cb

    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_cb

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    .line 810
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v1

    .line 812
    .local v1, "vtableloc":I
    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    add-int/lit8 v2, v2, -0x1

    .line 814
    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_1f

    iget-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    aget v3, v3, v2

    if-nez v3, :cond_1f

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 815
    :cond_1f
    add-int/lit8 v3, v2, 0x1

    .line 816
    .local v3, "trimmed_size":I
    :goto_21
    if-ltz v2, :cond_36

    .line 818
    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    aget v5, v4, v2

    if-eqz v5, :cond_2e

    aget v4, v4, v2

    sub-int v4, v1, v4

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    int-to-short v4, v4

    .line 819
    .local v4, "off":S
    invoke-virtual {p0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    .line 816
    .end local v4    # "off":S
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 822
    :cond_36
    const/4 v4, 0x2

    .line 823
    .local v4, "standard_fields":I
    iget v5, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    sub-int v5, v1, v5

    int-to-short v5, v5

    invoke-virtual {p0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    .line 824
    add-int/lit8 v5, v3, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {p0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    .line 827
    const/4 v5, 0x0

    .line 829
    .local v5, "existing_vtable":I
    const/4 v2, 0x0

    :goto_49
    iget v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    if-ge v2, v6, :cond_89

    .line 830
    iget-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    iget-object v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    aget v7, v7, v2

    sub-int/2addr v6, v7

    .line 831
    .local v6, "vt1":I
    iget v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 832
    .local v7, "vt2":I
    iget-object v8, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    .line 833
    .local v8, "len":S
    iget-object v9, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    if-ne v8, v9, :cond_86

    .line 834
    const/4 v9, 0x2

    .local v9, "j":I
    :goto_69
    if-ge v9, v8, :cond_81

    .line 835
    iget-object v10, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    iget-object v11, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    if-eq v10, v11, :cond_7e

    .line 836
    goto :goto_86

    .line 834
    :cond_7e
    add-int/lit8 v9, v9, 0x2

    goto :goto_69

    .line 839
    .end local v9    # "j":I
    :cond_81
    iget-object v9, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    aget v5, v9, v2

    .line 840
    goto :goto_89

    .line 829
    .end local v6    # "vt1":I
    .end local v7    # "vt2":I
    .end local v8    # "len":S
    :cond_86
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 844
    :cond_89
    :goto_89
    if-eqz v5, :cond_9c

    .line 847
    iget-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 849
    iget-object v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sub-int v8, v5, v1

    invoke-virtual {v7, v6, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_c8

    .line 853
    :cond_9c
    iget v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    iget-object v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    array-length v8, v7

    if-ne v6, v8, :cond_ab

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 854
    :cond_ab
    iget-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    iget v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v8

    aput v8, v6, v7

    .line 856
    iget-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 859
    :goto_c8
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 860
    return v1

    .line 808
    .end local v1    # "vtableloc":I
    .end local v2    # "i":I
    .end local v3    # "trimmed_size":I
    .end local v4    # "standard_fields":I
    .end local v5    # "existing_vtable":I
    :cond_cb
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endTable called without startTable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public endVector()I
    .registers 3

    .line 475
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_11

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 478
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    .line 479
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    return v0

    .line 476
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endVector called without startVector"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public finish(I)V
    .registers 3
    .param p1, "root_table"    # I

    .line 902
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(IZ)V

    .line 903
    return-void
.end method

.method public finish(ILjava/lang/String;)V
    .registers 4
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    .line 942
    return-void
.end method

.method protected finish(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;
    .param p3, "size_prefix"    # Z

    .line 923
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x4

    if-eqz p3, :cond_7

    const/4 v2, 0x4

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 924
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 927
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_21

    .line 928
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    .line 927
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 930
    .end local v0    # "i":I
    :cond_21
    invoke-virtual {p0, p1, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(IZ)V

    .line 931
    return-void

    .line 925
    :cond_25
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected finish(IZ)V
    .registers 6
    .param p1, "root_table"    # I
    .param p2, "size_prefix"    # Z

    .line 887
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x4

    if-eqz p2, :cond_7

    const/4 v2, 0x4

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 888
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    .line 889
    if-eqz p2, :cond_1d

    .line 890
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    .line 892
    :cond_1d
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    .line 894
    return-void
.end method

.method public finishSizePrefixed(I)V
    .registers 3
    .param p1, "root_table"    # I

    .line 911
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(IZ)V

    .line 912
    return-void
.end method

.method public finishSizePrefixed(ILjava/lang/String;)V
    .registers 4
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;

    .line 952
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    .line 953
    return-void
.end method

.method public finished()V
    .registers 3

    .line 612
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    if-eqz v0, :cond_5

    .line 616
    return-void

    .line 613
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish()."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public forceDefaults(Z)Lcom/google/flatbuffers/FlatBufferBuilder;
    .registers 2
    .param p1, "forceDefaults"    # Z

    .line 964
    iput-boolean p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    .line 965
    return-object p0
.end method

.method public init(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)Lcom/google/flatbuffers/FlatBufferBuilder;
    .registers 5
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bb_factory"    # Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 138
    iput-object p2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 139
    iput-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 143
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 145
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 146
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    .line 147
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    .line 148
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 149
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 150
    return-object p0
.end method

.method public notNested()V
    .registers 3

    .line 623
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-nez v0, :cond_5

    .line 625
    return-void

    .line 624
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: object serialization must not be nested."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public offset()I
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public pad(I)V
    .registers 6
    .param p1, "byte_size"    # I

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_12

    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public prep(II)V
    .registers 8
    .param p1, "size"    # I
    .param p2, "additional_bytes"    # I

    .line 281
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    if-le p1, v0, :cond_6

    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    not-int v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 286
    .local v0, "align_size":I
    :goto_16
    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_41

    .line 287
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 288
    .local v1, "old_buf_size":I
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 289
    .local v2, "old":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    invoke-static {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->growByteBuffer(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 290
    if-eq v2, v3, :cond_34

    .line 291
    iget-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    invoke-virtual {v3, v2}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 293
    :cond_34
    iget v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 294
    .end local v1    # "old_buf_size":I
    .end local v2    # "old":Ljava/nio/ByteBuffer;
    goto :goto_16

    .line 295
    :cond_41
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->pad(I)V

    .line 296
    return-void
.end method

.method public putBoolean(Z)V
    .registers 5
    .param p1, "x"    # Z

    .line 304
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByte(B)V
    .registers 4
    .param p1, "x"    # B

    .line 312
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putDouble(D)V
    .registers 5
    .param p1, "x"    # D

    .line 352
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloat(F)V
    .registers 4
    .param p1, "x"    # F

    .line 344
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)V
    .registers 4
    .param p1, "x"    # I

    .line 328
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLong(J)V
    .registers 5
    .param p1, "x"    # J

    .line 336
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(S)V
    .registers 4
    .param p1, "x"    # S

    .line 320
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public required(II)V
    .registers 9
    .param p1, "table"    # I
    .param p2, "field"    # I

    .line 871
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 872
    .local v0, "table_start":I
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    sub-int v1, v0, v1

    .line 873
    .local v1, "vtable_start":I
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v3, v1, p2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 875
    .local v2, "ok":Z
    :goto_1c
    if-eqz v2, :cond_1f

    .line 877
    return-void

    .line 876
    :cond_1f
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlatBuffers: field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " must be set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public sizedByteArray()[B
    .registers 4

    .line 1017
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public sizedByteArray(II)[B
    .registers 5
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1004
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 1005
    new-array v0, p2, [B

    .line 1006
    .local v0, "array":[B
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1007
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1008
    return-object v0
.end method

.method public sizedInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1027
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 1028
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1029
    .local v0, "duplicate":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1030
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1031
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;

    invoke-direct {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferBackedInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public slot(I)V
    .registers 4
    .param p1, "voffset"    # I

    .line 797
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v1

    aput v1, v0, p1

    .line 798
    return-void
.end method

.method public startTable(I)V
    .registers 4
    .param p1, "numfields"    # I

    .line 680
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->notNested()V

    .line 681
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    if-ge v0, p1, :cond_e

    :cond_a
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    .line 682
    :cond_e
    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 683
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 685
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    .line 686
    return-void
.end method

.method public startVector(III)V
    .registers 6
    .param p1, "elem_size"    # I
    .param p2, "num_elems"    # I
    .param p3, "alignment"    # I

    .line 460
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->notNested()V

    .line 461
    iput p2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 462
    mul-int v0, p1, p2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 463
    mul-int v0, p1, p2

    invoke-virtual {p0, p3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 465
    return-void
.end method
