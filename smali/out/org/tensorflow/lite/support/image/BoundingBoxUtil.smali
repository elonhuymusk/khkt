.class public final Lorg/tensorflow/lite/support/image/BoundingBoxUtil;
.super Ljava/lang/Object;
.source "BoundingBoxUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;,
        Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;[IILorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Ljava/util/List;
    .registers 25
    .param p0, "tensor"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .param p1, "valueIndex"    # [I
    .param p2, "boundingBoxAxis"    # I
    .param p3, "type"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    .param p4, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p5, "height"    # I
    .param p6, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
            "[II",
            "Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;",
            "Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 112
    move-object/from16 v6, p1

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v7

    .line 113
    .local v7, "shape":[I
    array-length v1, v7

    neg-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_13

    array-length v1, v7

    if-ge v0, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 118
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 115
    const-string v8, "Axis %d is not in range (-(D+1), D), where D is the number of dimensions of input tensor (shape=%s)"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v1, v5}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    if-gez v0, :cond_32

    .line 120
    array-length v1, v7

    add-int/2addr v0, v1

    move v8, v0

    .end local p2    # "boundingBoxAxis":I
    .local v0, "boundingBoxAxis":I
    goto :goto_33

    .line 119
    .end local v0    # "boundingBoxAxis":I
    .restart local p2    # "boundingBoxAxis":I
    :cond_32
    move v8, v0

    .line 122
    .end local p2    # "boundingBoxAxis":I
    .local v8, "boundingBoxAxis":I
    :goto_33
    aget v0, v7, v8

    const/4 v9, 0x4

    if-ne v0, v9, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    aget v5, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 124
    const-string v5, "Size of bounding box dimension %d is not 4. Got %d in shape %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 127
    array-length v0, v6

    if-ne v0, v9, :cond_60

    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    new-array v1, v4, [Ljava/lang/Object;

    array-length v4, v6

    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 129
    const-string v4, "Bounding box index array length %d is not 4. Got index array %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 132
    nop

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    if-ne v0, v1, :cond_83

    const/4 v2, 0x1

    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounding Boxes only create from FLOAT32 buffers. Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v2, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 139
    .local v10, "boundingBoxList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x1

    .line 140
    .local v0, "a":I
    const/4 v1, 0x0

    move v11, v0

    .end local v0    # "a":I
    .local v1, "i":I
    .local v11, "a":I
    :goto_a8
    if-ge v1, v8, :cond_b1

    .line 141
    aget v0, v7, v1

    mul-int v11, v11, v0

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 143
    .end local v1    # "i":I
    :cond_b1
    const/4 v0, 0x1

    .line 144
    .local v0, "b":I
    add-int/lit8 v1, v8, 0x1

    move v12, v0

    .end local v0    # "b":I
    .restart local v1    # "i":I
    .local v12, "b":I
    :goto_b5
    array-length v0, v7

    if-ge v1, v0, :cond_bf

    .line 145
    aget v0, v7, v1

    mul-int v12, v12, v0

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 147
    .end local v1    # "i":I
    :cond_bf
    new-array v13, v9, [F

    .line 148
    .local v13, "values":[F
    invoke-virtual/range {p0 .. p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 149
    .local v14, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    .line 151
    .local v15, "floatBuffer":Ljava/nio/FloatBuffer;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_ce
    if-ge v5, v11, :cond_109

    .line 152
    const/4 v0, 0x0

    move v4, v0

    .local v4, "j":I
    :goto_d2
    if-ge v4, v12, :cond_102

    .line 153
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_d5
    if-ge v0, v9, :cond_e6

    .line 154
    mul-int/lit8 v1, v5, 0x4

    add-int/2addr v1, v0

    mul-int v1, v1, v12

    add-int/2addr v1, v4

    invoke-virtual {v15, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, v13, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 156
    .end local v0    # "k":I
    :cond_e6
    nop

    .line 157
    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v16, v4

    .end local v4    # "j":I
    .local v16, "j":I
    move/from16 v4, p5

    move/from16 v17, v5

    .end local v5    # "i":I
    .local v17, "i":I
    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->convertOneBoundingBox([F[ILorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 156
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v17

    .end local v16    # "j":I
    .restart local v4    # "j":I
    goto :goto_d2

    .end local v17    # "i":I
    .restart local v5    # "i":I
    :cond_102
    move/from16 v16, v4

    move/from16 v17, v5

    .line 151
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v17    # "i":I
    add-int/lit8 v5, v17, 0x1

    .end local v17    # "i":I
    .restart local v5    # "i":I
    goto :goto_ce

    .line 160
    .end local v5    # "i":I
    :cond_109
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 161
    return-object v10
.end method

.method private static convertFromBoundaries([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;
    .registers 15
    .param p0, "values"    # [F
    .param p1, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p2, "imageHeight"    # I
    .param p3, "imageWidth"    # I

    .line 193
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 194
    .local v0, "left":F
    const/4 v1, 0x1

    aget v8, p0, v1

    .line 195
    .local v8, "top":F
    const/4 v1, 0x2

    aget v9, p0, v1

    .line 196
    .local v9, "right":F
    const/4 v1, 0x3

    aget v10, p0, v1

    .line 197
    .local v10, "bottom":F
    move v1, v0

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->getRectF(FFFFIILorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method private static convertFromCenter([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;
    .registers 19
    .param p0, "values"    # [F
    .param p1, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p2, "imageHeight"    # I
    .param p3, "imageWidth"    # I

    .line 211
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 212
    .local v0, "centerX":F
    const/4 v1, 0x1

    aget v1, p0, v1

    .line 213
    .local v1, "centerY":F
    const/4 v2, 0x2

    aget v2, p0, v2

    .line 214
    .local v2, "w":F
    const/4 v3, 0x3

    aget v3, p0, v3

    .line 216
    .local v3, "h":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    sub-float v5, v0, v5

    .line 217
    .local v5, "left":F
    div-float v6, v3, v4

    sub-float v13, v1, v6

    .line 218
    .local v13, "top":F
    div-float v6, v2, v4

    add-float v14, v0, v6

    .line 219
    .local v14, "right":F
    div-float v4, v3, v4

    add-float/2addr v4, v1

    .line 220
    .local v4, "bottom":F
    move v6, v5

    move v7, v13

    move v8, v14

    move v9, v4

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->getRectF(FFFFIILorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;)Landroid/graphics/RectF;

    move-result-object v6

    return-object v6
.end method

.method private static convertFromUpperLeft([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;
    .registers 15
    .param p0, "values"    # [F
    .param p1, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p2, "imageHeight"    # I
    .param p3, "imageWidth"    # I

    .line 202
    const/4 v0, 0x0

    aget v8, p0, v0

    .line 203
    .local v8, "left":F
    const/4 v1, 0x1

    aget v9, p0, v1

    .line 204
    .local v9, "top":F
    aget v0, p0, v0

    const/4 v2, 0x2

    aget v2, p0, v2

    add-float/2addr v0, v2

    .line 205
    .local v0, "right":F
    aget v1, p0, v1

    const/4 v2, 0x3

    aget v2, p0, v2

    add-float v10, v1, v2

    .line 206
    .local v10, "bottom":F
    move v1, v8

    move v2, v9

    move v3, v0

    move v4, v10

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->getRectF(FFFFIILorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method private static convertOneBoundingBox([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;
    .registers 8
    .param p0, "values"    # [F
    .param p1, "type"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    .param p2, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .line 180
    sget-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$1;->$SwitchMap$org$tensorflow$lite$support$image$BoundingBoxUtil$Type:[I

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot recognize BoundingBox.Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_22
    invoke-static {p0, p2, p3, p4}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->convertFromCenter([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_27
    invoke-static {p0, p2, p3, p4}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->convertFromUpperLeft([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_2c
    invoke-static {p0, p2, p3, p4}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->convertFromBoundaries([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method private static convertOneBoundingBox([F[ILorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;
    .registers 10
    .param p0, "values"    # [F
    .param p1, "valueIndex"    # [I
    .param p2, "type"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    .param p3, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .param p4, "height"    # I
    .param p5, "width"    # I

    .line 171
    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 172
    .local v1, "orderedValues":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_f

    .line 173
    aget v3, p1, v2

    aget v3, p0, v3

    aput v3, v1, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 175
    .end local v2    # "i":I
    :cond_f
    invoke-static {v1, p2, p3, p4, p5}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil;->convertOneBoundingBox([FLorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;II)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private static getRectF(FFFFIILorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;)Landroid/graphics/RectF;
    .registers 12
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "imageHeight"    # I
    .param p5, "imageWidth"    # I
    .param p6, "coordinateType"    # Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    .line 231
    sget-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->PIXEL:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    if-ne p6, v0, :cond_a

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 234
    :cond_a
    sget-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->RATIO:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    if-ne p6, v0, :cond_20

    .line 235
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p5

    mul-float v1, v1, p0

    int-to-float v2, p4

    mul-float v2, v2, p1

    int-to-float v3, p5

    mul-float v3, v3, p2

    int-to-float v4, p4

    mul-float v4, v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 238
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert coordinate type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
