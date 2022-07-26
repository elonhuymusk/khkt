.class public Lcom/google/flatbuffers/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I

.field utf8:Lcom/google/flatbuffers/Utf8;

.field private vtable_size:I

.field private vtable_start:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/flatbuffers/Table;->utf8:Lcom/google/flatbuffers/Utf8;

    return-void
.end method

.method protected static __has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .registers 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "ident"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_20

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    if-eq v2, v3, :cond_1d

    const/4 v1, 0x0

    return v1

    .line 217
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 220
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected static __indirect(ILjava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "offset"    # I
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method protected static __offset(IILjava/nio/ByteBuffer;)I
    .registers 6
    .param p0, "vtable_offset"    # I
    .param p1, "offset"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 58
    .local v0, "vtable":I
    add-int v1, v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected static __string(ILjava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)Ljava/lang/String;
    .registers 5
    .param p0, "offset"    # I
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "utf8"    # Lcom/google/flatbuffers/Utf8;

    .line 111
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 112
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 113
    .local v0, "length":I
    add-int/lit8 v1, p0, 0x4

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static __union(Lcom/google/flatbuffers/Table;ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/Table;
    .registers 4
    .param p0, "t"    # Lcom/google/flatbuffers/Table;
    .param p1, "offset"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 201
    invoke-static {p1, p2}, Lcom/google/flatbuffers/Table;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/flatbuffers/Table;->__reset(ILjava/nio/ByteBuffer;)V

    .line 202
    return-object p0
.end method

.method protected static compareStrings(IILjava/nio/ByteBuffer;)I
    .registers 11
    .param p0, "offset_1"    # I
    .param p1, "offset_2"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 258
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 259
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 260
    .local v0, "len_1":I
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 261
    .local v1, "len_2":I
    add-int/lit8 v2, p0, 0x4

    .line 262
    .local v2, "startPos_1":I
    add-int/lit8 v3, p1, 0x4

    .line 263
    .local v3, "startPos_2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 264
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v4, :cond_3c

    .line 265
    add-int v6, v5, v2

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v5, v3

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v6, v7, :cond_39

    .line 266
    add-int v6, v5, v2

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v5, v3

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    sub-int/2addr v6, v7

    return v6

    .line 264
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 268
    .end local v5    # "i":I
    :cond_3c
    sub-int v5, v0, v1

    return v5
.end method

.method protected static compareStrings(I[BLjava/nio/ByteBuffer;)I
    .registers 10
    .param p0, "offset_1"    # I
    .param p1, "key"    # [B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 280
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 281
    .local v0, "len_1":I
    array-length v1, p1

    .line 282
    .local v1, "len_2":I
    add-int/lit8 v2, p0, 0x4

    .line 283
    .local v2, "startPos_1":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 284
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v3, :cond_2a

    .line 285
    add-int v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_27

    .line 286
    add-int v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p1, v4

    sub-int/2addr v5, v6

    return v5

    .line 284
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 288
    .end local v4    # "i":I
    :cond_2a
    sub-int v4, v0, v1

    return v4
.end method


# virtual methods
.method protected __indirect(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 68
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected __offset(I)I
    .registers 4
    .param p1, "vtable_offset"    # I

    .line 53
    iget v0, p0, Lcom/google/flatbuffers/Table;->vtable_size:I

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/Table;->vtable_start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public __reset()V
    .registers 3

    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__reset(ILjava/nio/ByteBuffer;)V

    .line 319
    return-void
.end method

.method protected __reset(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 298
    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    .line 299
    if-eqz p2, :cond_17

    .line 300
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    .line 301
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/flatbuffers/Table;->vtable_start:I

    .line 302
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    iput v0, p0, Lcom/google/flatbuffers/Table;->vtable_size:I

    goto :goto_1e

    .line 304
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    .line 305
    iput v0, p0, Lcom/google/flatbuffers/Table;->vtable_start:I

    .line 306
    iput v0, p0, Lcom/google/flatbuffers/Table;->vtable_size:I

    .line 308
    :goto_1e
    return-void
.end method

.method protected __string(I)Ljava/lang/String;
    .registers 4
    .param p1, "offset"    # I

    .line 94
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->utf8:Lcom/google/flatbuffers/Utf8;

    invoke-static {p1, v0, v1}, Lcom/google/flatbuffers/Table;->__string(ILjava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected __union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;
    .registers 4
    .param p1, "t"    # Lcom/google/flatbuffers/Table;
    .param p2, "offset"    # I

    .line 189
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, v0}, Lcom/google/flatbuffers/Table;->__union(Lcom/google/flatbuffers/Table;ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    return-object v0
.end method

.method protected __vector(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 135
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 136
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected __vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "vector_offset"    # I
    .param p2, "elem_size"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    .line 152
    .local v0, "o":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 153
    :cond_8
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 154
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result v2

    .line 155
    .local v2, "vectorstart":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result v3

    mul-int v3, v3, p2

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    return-object v1
.end method

.method protected __vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "vector_offset"    # I
    .param p3, "elem_size"    # I

    .line 172
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    .line 173
    .local v0, "o":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result v1

    .line 175
    .local v1, "vectorstart":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result v2

    mul-int v2, v2, p3

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    return-object p1
.end method

.method protected __vector_len(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 123
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 124
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 125
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;
    .param p3, "bb"    # Ljava/nio/ByteBuffer;

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected sortTables([ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "offsets"    # [I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 230
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Integer;

    .line 231
    .local v0, "off":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 232
    .end local v1    # "i":I
    :cond_12
    new-instance v1, Lcom/google/flatbuffers/Table$1;

    invoke-direct {v1, p0, p2}, Lcom/google/flatbuffers/Table$1;-><init>(Lcom/google/flatbuffers/Table;Ljava/nio/ByteBuffer;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 237
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    array-length v2, p1

    if-ge v1, v2, :cond_29

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 238
    .end local v1    # "i":I
    :cond_29
    return-void
.end method
