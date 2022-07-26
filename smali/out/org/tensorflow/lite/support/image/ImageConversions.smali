.class Lorg/tensorflow/lite/support/image/ImageConversions;
.super Ljava/lang/Object;
.source "ImageConversions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBitmapToTensorBuffer(Landroid/graphics/Bitmap;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 109
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 110
    .local v9, "h":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 111
    .local v10, "intValues":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 113
    mul-int v0, v8, v9

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 114
    .local v0, "flatSize":I
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 115
    .local v2, "shape":[I
    sget-object v3, Lorg/tensorflow/lite/support/image/ImageConversions$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ca

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The type of TensorBuffer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", is unsupported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_56
    mul-int v3, v8, v9

    mul-int/lit8 v3, v3, 0x3

    new-array v1, v3, [F

    .line 130
    .local v1, "floatArr":[F
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5e
    array-length v5, v10

    if-ge v3, v5, :cond_84

    .line 131
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget v6, v10, v3

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    aput v6, v1, v4

    .line 132
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v6, v10, v3

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    aput v6, v1, v5

    .line 133
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    aget v6, v10, v3

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    aput v6, v1, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_5e

    .line 135
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_84
    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 136
    goto :goto_c8

    .line 117
    .end local v1    # "floatArr":[F
    :pswitch_88
    mul-int v3, v8, v9

    mul-int/lit8 v3, v3, 0x3

    new-array v1, v3, [B

    .line 118
    .local v1, "byteArr":[B
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_90
    array-length v5, v10

    if-ge v3, v5, :cond_b6

    .line 119
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    aget v6, v10, v3

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 120
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v6, v10, v3

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 121
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    aget v6, v10, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 118
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_90

    .line 123
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_b6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 124
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {p1, v3, v2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadBuffer(Ljava/nio/ByteBuffer;[I)V

    .line 127
    nop

    .line 142
    .end local v1    # "byteArr":[B
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_c8
    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_88
        :pswitch_56
    .end packed-switch
.end method

.method static convertGrayscaleTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 74
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-ne v0, v1, :cond_a

    .line 75
    move-object v0, p0

    goto :goto_10

    .line 76
    :cond_a
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    :goto_10
    nop

    .line 78
    .local v0, "uint8Buffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v1

    .line 79
    .local v1, "shape":[I
    sget-object v2, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 80
    .local v2, "grayscale":Lorg/tensorflow/lite/support/image/ColorSpaceType;
    invoke-virtual {v2, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->assertShape([I)V

    .line 89
    nop

    .line 91
    invoke-virtual {v2, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getWidth([I)I

    move-result v3

    invoke-virtual {v2, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getHeight([I)I

    move-result v4

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->toBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 90
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 92
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 94
    return-object v3
.end method

.method static convertRgbTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 41
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 42
    .local v0, "shape":[I
    sget-object v1, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 43
    .local v1, "rgb":Lorg/tensorflow/lite/support/image/ColorSpaceType;
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->assertShape([I)V

    .line 45
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getHeight([I)I

    move-result v10

    .line 46
    .local v10, "h":I
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getWidth([I)I

    move-result v11

    .line 47
    .local v11, "w":I
    invoke-virtual {v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->toBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v11, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 50
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    mul-int v2, v11, v10

    new-array v13, v2, [I

    .line 51
    .local v13, "intValues":[I
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getIntArray()[I

    move-result-object v14

    .line 52
    .local v14, "rgbValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_23
    array-length v4, v13

    if-ge v2, v4, :cond_3c

    .line 53
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v3, v14, v3

    .line 54
    .local v3, "r":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget v4, v14, v4

    .line 55
    .local v4, "g":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    aget v5, v14, v5

    .line 56
    .local v5, "b":I
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v13, v2

    .line 52
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "b":I
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_23

    .line 58
    .end local v2    # "i":I
    .end local v6    # "j":I
    :cond_3c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move-object v3, v13

    move v5, v11

    move v8, v11

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 60
    return-object v12
.end method
