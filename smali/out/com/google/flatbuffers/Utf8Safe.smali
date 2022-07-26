.class public final Lcom/google/flatbuffers/Utf8Safe;
.super Lcom/google/flatbuffers/Utf8;
.source "Utf8Safe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/google/flatbuffers/Utf8;-><init>()V

    return-void
.end method

.method private static computeEncodedLength(Ljava/lang/CharSequence;)I
    .registers 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 75
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 76
    .local v0, "utf16Length":I
    move v1, v0

    .line 77
    .local v1, "utf8Length":I
    const/4 v2, 0x0

    .line 80
    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 85
    :cond_13
    :goto_13
    if-ge v2, v0, :cond_2a

    .line 86
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 87
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    .line 88
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    .line 85
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 90
    .restart local v3    # "c":C
    :cond_25
    invoke-static {p0, v2}, Lcom/google/flatbuffers/Utf8Safe;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v1, v4

    .line 95
    .end local v3    # "c":C
    :cond_2a
    if-lt v1, v0, :cond_2d

    .line 100
    return v1

    .line 97
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v1

    const-wide v7, 0x100000000L

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decodeUtf8Array([BII)Ljava/lang/String;
    .registers 16
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 128
    or-int v0, p1, p2

    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_b4

    .line 133
    move v0, p1

    .line 134
    .local v0, "offset":I
    add-int v3, v0, p2

    .line 138
    .local v3, "limit":I
    new-array v10, p2, [C

    .line 139
    .local v10, "resultArr":[C
    const/4 v4, 0x0

    .line 143
    .local v4, "resultPos":I
    :goto_10
    if-ge v0, v3, :cond_24

    .line 144
    aget-byte v5, p0, v0

    .line 145
    .local v5, "b":B
    invoke-static {v5}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 146
    goto :goto_24

    .line 148
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 149
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "resultPos":I
    .local v6, "resultPos":I
    invoke-static {v5, v10, v4}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 150
    .end local v5    # "b":B
    move v4, v6

    goto :goto_10

    .line 152
    .end local v6    # "resultPos":I
    .restart local v4    # "resultPos":I
    :cond_24
    :goto_24
    move v9, v4

    .end local v4    # "resultPos":I
    .local v9, "resultPos":I
    :goto_25
    if-ge v0, v3, :cond_ae

    .line 153
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aget-byte v0, p0, v0

    .line 154
    .local v0, "byte1":B
    invoke-static {v0}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 155
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "resultPos":I
    .local v5, "resultPos":I
    invoke-static {v0, v10, v9}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 158
    :goto_36
    if-ge v4, v3, :cond_4a

    .line 159
    aget-byte v6, p0, v4

    .line 160
    .local v6, "b":B
    invoke-static {v6}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v7

    if-nez v7, :cond_41

    .line 161
    goto :goto_4a

    .line 163
    :cond_41
    add-int/lit8 v4, v4, 0x1

    .line 164
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "resultPos":I
    .local v7, "resultPos":I
    invoke-static {v6, v10, v5}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 165
    .end local v6    # "b":B
    move v5, v7

    goto :goto_36

    .line 195
    .end local v0    # "byte1":B
    .end local v7    # "resultPos":I
    .restart local v5    # "resultPos":I
    :cond_4a
    :goto_4a
    move v0, v4

    move v9, v5

    goto :goto_a6

    .line 166
    .end local v5    # "resultPos":I
    .restart local v0    # "byte1":B
    .restart local v9    # "resultPos":I
    :cond_4d
    invoke-static {v0}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result v5

    const-string v6, "Invalid UTF-8"

    if-eqz v5, :cond_69

    .line 167
    if-ge v4, v3, :cond_63

    .line 170
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "resultPos":I
    .local v6, "resultPos":I
    invoke-static {v0, v4, v10, v9}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    move v0, v5

    move v9, v6

    goto :goto_a6

    .line 168
    .end local v5    # "offset":I
    .end local v6    # "resultPos":I
    .restart local v4    # "offset":I
    .restart local v9    # "resultPos":I
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_69
    invoke-static {v0}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 172
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_83

    .line 175
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v5, p0, v5

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "resultPos":I
    .restart local v7    # "resultPos":I
    invoke-static {v0, v4, v5, v10, v9}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    move v0, v6

    move v9, v7

    goto :goto_a6

    .line 173
    .end local v6    # "offset":I
    .end local v7    # "resultPos":I
    .restart local v4    # "offset":I
    .restart local v9    # "resultPos":I
    :cond_83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_89
    add-int/lit8 v5, v3, -0x2

    if-ge v4, v5, :cond_a8

    .line 185
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v6, p0, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p0, v5

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "offset":I
    .local v11, "offset":I
    aget-byte v8, p0, v4

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "resultPos":I
    .local v12, "resultPos":I
    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    .line 193
    add-int/2addr v12, v2

    move v0, v11

    move v9, v12

    .line 195
    .end local v11    # "offset":I
    .end local v12    # "resultPos":I
    .local v0, "offset":I
    .restart local v9    # "resultPos":I
    :goto_a6
    goto/16 :goto_25

    .line 183
    .local v0, "byte1":B
    .restart local v4    # "offset":I
    :cond_a8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v4    # "offset":I
    .local v0, "offset":I
    :cond_ae
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10, v1, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 129
    .end local v0    # "offset":I
    .end local v3    # "limit":I
    .end local v9    # "resultPos":I
    .end local v10    # "resultArr":[C
    :cond_b4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p0

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 15
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 203
    or-int v0, p1, p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c9

    .line 209
    add-int v0, p1, p2

    .line 213
    .local v0, "limit":I
    new-array v9, p2, [C

    .line 214
    .local v9, "resultArr":[C
    const/4 v3, 0x0

    .line 218
    .local v3, "resultPos":I
    :goto_12
    if-ge p1, v0, :cond_28

    .line 219
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 220
    .local v4, "b":B
    invoke-static {v4}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 221
    goto :goto_28

    .line 223
    :cond_1f
    add-int/lit8 p1, p1, 0x1

    .line 224
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "resultPos":I
    .local v5, "resultPos":I
    invoke-static {v4, v9, v3}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 225
    .end local v4    # "b":B
    move v3, v5

    goto :goto_12

    .line 227
    .end local v5    # "resultPos":I
    .restart local v3    # "resultPos":I
    :cond_28
    :goto_28
    move v8, v3

    .end local v3    # "resultPos":I
    .local v8, "resultPos":I
    :goto_29
    if-ge p1, v0, :cond_c3

    .line 228
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    .line 229
    .local p1, "byte1":B
    invoke-static {p1}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 230
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "resultPos":I
    .local v4, "resultPos":I
    invoke-static {p1, v9, v8}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 233
    :goto_3c
    if-ge v3, v0, :cond_52

    .line 234
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 235
    .local v5, "b":B
    invoke-static {v5}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v6

    if-nez v6, :cond_49

    .line 236
    goto :goto_52

    .line 238
    :cond_49
    add-int/lit8 v3, v3, 0x1

    .line 239
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "resultPos":I
    .local v6, "resultPos":I
    invoke-static {v5, v9, v4}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    .line 240
    .end local v5    # "b":B
    move v4, v6

    goto :goto_3c

    .line 271
    .end local v6    # "resultPos":I
    .end local p1    # "byte1":B
    .restart local v4    # "resultPos":I
    :cond_52
    :goto_52
    move p1, v3

    move v8, v4

    goto/16 :goto_bb

    .line 241
    .end local v4    # "resultPos":I
    .restart local v8    # "resultPos":I
    .restart local p1    # "byte1":B
    :cond_56
    invoke-static {p1}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result v4

    const-string v5, "Invalid UTF-8"

    if-eqz v4, :cond_74

    .line 242
    if-ge v3, v0, :cond_6e

    .line 245
    add-int/lit8 v4, v3, 0x1

    .line 246
    .end local v3    # "offset":I
    .local v4, "offset":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 245
    .end local v8    # "resultPos":I
    .local v5, "resultPos":I
    invoke-static {p1, v3, v9, v8}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_bb

    .line 243
    .end local v4    # "offset":I
    .end local v5    # "resultPos":I
    .restart local v3    # "offset":I
    .restart local v8    # "resultPos":I
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_74
    invoke-static {p1}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 248
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_92

    .line 251
    add-int/lit8 v4, v3, 0x1

    .line 253
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .line 254
    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 251
    .end local v8    # "resultPos":I
    .restart local v6    # "resultPos":I
    invoke-static {p1, v3, v4, v9, v8}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_bb

    .line 249
    .end local v5    # "offset":I
    .end local v6    # "resultPos":I
    .restart local v3    # "offset":I
    .restart local v8    # "resultPos":I
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_98
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_bd

    .line 261
    add-int/lit8 v4, v3, 0x1

    .line 263
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    .line 264
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v10, v3, 0x1

    .line 265
    .end local v3    # "offset":I
    .local v10, "offset":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v11, v8, 0x1

    .line 261
    .end local v8    # "resultPos":I
    .local v11, "resultPos":I
    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v9

    invoke-static/range {v3 .. v8}, Lcom/google/flatbuffers/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    .line 269
    add-int/2addr v11, v2

    move p1, v10

    move v8, v11

    .line 271
    .end local v10    # "offset":I
    .end local v11    # "resultPos":I
    .restart local v8    # "resultPos":I
    .local p1, "offset":I
    :goto_bb
    goto/16 :goto_29

    .line 259
    .restart local v3    # "offset":I
    .local p1, "byte1":B
    :cond_bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v3    # "offset":I
    .local p1, "offset":I
    :cond_c3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 204
    .end local v0    # "limit":I
    .end local v8    # "resultPos":I
    .end local v9    # "resultArr":[C
    :cond_c9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    .line 205
    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeUtf8Array(Ljava/lang/CharSequence;[BII)I
    .registers 14
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 370
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 371
    .local v0, "utf16Length":I
    move v1, p2

    .line 372
    .local v1, "j":I
    const/4 v2, 0x0

    .line 373
    .local v2, "i":I
    add-int v3, p2, p3

    .line 376
    .local v3, "limit":I
    :goto_8
    const/16 v4, 0x80

    if-ge v2, v0, :cond_1f

    add-int v5, v2, v1

    if-ge v5, v3, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    if-ge v5, v4, :cond_1f

    .line 377
    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p1, v4

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 379
    .end local v6    # "c":C
    :cond_1f
    if-ne v2, v0, :cond_24

    .line 380
    add-int v4, v1, v0

    return v4

    .line 382
    :cond_24
    add-int/2addr v1, v2

    .line 383
    :goto_25
    if-ge v2, v0, :cond_108

    .line 384
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 385
    .local v5, "c":C
    if-ge v5, v4, :cond_37

    if-ge v1, v3, :cond_37

    .line 386
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .local v6, "j":I
    int-to-byte v7, v5

    aput-byte v7, p1, v1

    move v1, v6

    goto/16 :goto_bf

    .line 387
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_37
    const/16 v6, 0x800

    if-ge v5, v6, :cond_51

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_51

    .line 388
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 389
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    goto :goto_bf

    .line 390
    :cond_51
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_5b

    if-ge v6, v5, :cond_7c

    :cond_5b
    add-int/lit8 v8, v3, -0x3

    if-gt v1, v8, :cond_7c

    .line 392
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 393
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 394
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    move v1, v6

    goto :goto_bf

    .line 395
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_7c
    add-int/lit8 v8, v3, -0x4

    if-gt v1, v8, :cond_cb

    .line 399
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_c3

    add-int/lit8 v2, v2, 0x1

    .line 400
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "low":C
    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 403
    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 404
    .local v6, "codePoint":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .local v8, "j":I
    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 405
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 406
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .restart local v8    # "j":I
    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 407
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 408
    .end local v6    # "codePoint":I
    .end local v7    # "low":C
    nop

    .line 383
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 401
    :cond_c3
    new-instance v4, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v6, v0}, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 411
    :cond_cb
    if-gt v7, v5, :cond_e9

    if-gt v5, v6, :cond_e9

    add-int/lit8 v4, v2, 0x1

    .line 412
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_e3

    add-int/lit8 v4, v2, 0x1

    .line 413
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 414
    :cond_e3
    new-instance v4, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v4, v2, v0}, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 416
    :cond_e9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    .end local v5    # "c":C
    :cond_108
    return v1
.end method

.method private static encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 298
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 299
    .local v0, "inLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 300
    .local v1, "outIx":I
    const/4 v2, 0x0

    .line 308
    .local v2, "inIx":I
    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_20

    :try_start_d
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v3, :cond_20

    .line 309
    add-int v3, v1, v2

    int-to-byte v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 357
    .end local v5    # "c":C
    :catch_1d
    move-exception v3

    goto/16 :goto_cc

    .line 311
    :cond_20
    if-ne v2, v0, :cond_28

    .line 313
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    return-void

    .line 317
    :cond_28
    add-int/2addr v1, v2

    .line 318
    :goto_29
    if-ge v2, v0, :cond_c7

    .line 319
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 320
    .local v4, "c":C
    if-ge v4, v3, :cond_37

    .line 322
    int-to-byte v5, v4

    invoke-virtual {p1, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_35} :catch_1d

    goto/16 :goto_c1

    .line 323
    :cond_37
    const/16 v5, 0x800

    if-ge v4, v5, :cond_53

    .line 327
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_42
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 328
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4c} :catch_4f

    move v1, v5

    goto/16 :goto_c1

    .line 357
    .end local v4    # "c":C
    :catch_4f
    move-exception v3

    move v1, v5

    goto/16 :goto_cc

    .line 329
    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_53
    const v5, 0xd800

    if-lt v4, v5, :cond_a5

    const v5, 0xdfff

    if-ge v5, v4, :cond_5e

    goto :goto_a5

    .line 343
    :cond_5e
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_9f

    add-int/lit8 v2, v2, 0x1

    :try_start_64
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "low":C
    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 347
    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5
    :try_end_73
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_73} :catch_1d

    .line 348
    .local v5, "codePoint":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .local v7, "outIx":I
    ushr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    :try_start_7a
    invoke-virtual {p1, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7a .. :try_end_7d} :catch_9c

    .line 349
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_85
    invoke-virtual {p1, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_85 .. :try_end_88} :catch_1d

    .line 350
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .restart local v7    # "outIx":I
    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_90
    invoke-virtual {p1, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 351
    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_9a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_90 .. :try_end_9a} :catch_9c

    move v1, v7

    goto :goto_c1

    .line 357
    .end local v4    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "low":C
    :catch_9c
    move-exception v3

    move v1, v7

    goto :goto_cc

    .line 344
    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_9f
    :try_start_9f
    new-instance v3, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    .end local v0    # "inLength":I
    .end local v1    # "outIx":I
    .end local v2    # "inIx":I
    .end local p0    # "in":Ljava/lang/CharSequence;
    .end local p1    # "out":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_1d

    .line 334
    .restart local v0    # "inLength":I
    .restart local v1    # "outIx":I
    .restart local v2    # "inIx":I
    .restart local p0    # "in":Ljava/lang/CharSequence;
    .restart local p1    # "out":Ljava/nio/ByteBuffer;
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_ac
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ac .. :try_end_af} :catch_4f

    .line 335
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_b7
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 336
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p1, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 318
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 356
    .end local v4    # "c":C
    :cond_c7
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_ca} :catch_1d

    .line 365
    nop

    .line 366
    return-void

    .line 362
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_cc
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 363
    .local v4, "badWriteIndex":I
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 105
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .line 106
    .local v1, "utf8Length":I
    move v2, p1

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_36

    .line 107
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 108
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_16

    .line 109
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    goto :goto_33

    .line 111
    :cond_16
    add-int/lit8 v1, v1, 0x2

    .line 113
    const v4, 0xd800

    if-gt v4, v3, :cond_33

    const v4, 0xdfff

    if-gt v3, v4, :cond_33

    .line 115
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 116
    .local v4, "cp":I
    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_2d

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 117
    :cond_2d
    new-instance v5, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v5, v2, v0}, Lcom/google/flatbuffers/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v5

    .line 106
    .end local v3    # "c":C
    .end local v4    # "cp":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 123
    .end local v2    # "i":I
    :cond_36
    return v1
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p3}, Lcom/google/flatbuffers/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_14
    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/Utf8Safe;->decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 433
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 434
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 435
    .local v0, "start":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 436
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 435
    invoke-static {p1, v1, v2, v3}, Lcom/google/flatbuffers/Utf8Safe;->encodeUtf8Array(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 437
    .local v1, "end":I
    sub-int v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 438
    .end local v0    # "start":I
    .end local v1    # "end":I
    goto :goto_24

    .line 439
    :cond_21
    invoke-static {p1, p2}, Lcom/google/flatbuffers/Utf8Safe;->encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 441
    :goto_24
    return-void
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "in"    # Ljava/lang/CharSequence;

    .line 278
    invoke-static {p1}, Lcom/google/flatbuffers/Utf8Safe;->computeEncodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
