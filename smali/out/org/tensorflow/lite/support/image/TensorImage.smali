.class public Lorg/tensorflow/lite/support/image/TensorImage;
.super Ljava/lang/Object;
.source "TensorImage.java"


# instance fields
.field private container:Lorg/tensorflow/lite/support/image/ImageContainer;

.field private final dataType:Lorg/tensorflow/lite/DataType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/DataType;)V
    .registers 4
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    .line 82
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-eq p1, v0, :cond_11

    sget-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    const-string v1, "Illegal data type for TensorImage: Only FLOAT32 and UINT8 are accepted"

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->dataType:Lorg/tensorflow/lite/DataType;

    .line 86
    return-void
.end method

.method public static createFrom(Lorg/tensorflow/lite/support/image/TensorImage;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/image/TensorImage;
    .registers 4
    .param p0, "src"    # Lorg/tensorflow/lite/support/image/TensorImage;
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;

    .line 109
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    .line 110
    .local v0, "dst":Lorg/tensorflow/lite/support/image/TensorImage;
    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    invoke-interface {v1}, Lorg/tensorflow/lite/support/image/ImageContainer;->clone()Lorg/tensorflow/lite/support/image/ImageContainer;

    move-result-object v1

    iput-object v1, v0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    .line 111
    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/TensorImage;
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 95
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>()V

    .line 96
    .local v0, "image":Lorg/tensorflow/lite/support/image/TensorImage;
    invoke-virtual {v0, p0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 215
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    if-eqz v0, :cond_9

    .line 219
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 216
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 238
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpaceType()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 3

    .line 278
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    if-eqz v0, :cond_9

    .line 282
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/ImageContainer;->getColorSpaceType()Lorg/tensorflow/lite/support/image/ColorSpaceType;

    move-result-object v0

    return-object v0

    .line 279
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataType()Lorg/tensorflow/lite/DataType;
    .registers 2

    .line 269
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->dataType:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .line 306
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    if-eqz v0, :cond_9

    .line 310
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/ImageContainer;->getHeight()I

    move-result v0

    return v0

    .line 307
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 3

    .line 255
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    if-eqz v0, :cond_b

    .line 259
    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->dataType:Lorg/tensorflow/lite/DataType;

    invoke-interface {v0, v1}, Lorg/tensorflow/lite/support/image/ImageContainer;->getTensorBuffer(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    return-object v0

    .line 256
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .registers 3

    .line 292
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    if-eqz v0, :cond_9

    .line 296
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/ImageContainer;->getWidth()I

    move-result v0

    return v0

    .line 293
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 132
    invoke-static {p1}, Lorg/tensorflow/lite/support/image/BitmapContainer;->create(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    .line 133
    return-void
.end method

.method public load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 181
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V

    .line 182
    return-void
.end method

.method public load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V
    .registers 4
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .param p2, "colorSpaceType"    # Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 195
    invoke-static {p1, p2}, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->create(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->container:Lorg/tensorflow/lite/support/image/ImageContainer;

    .line 196
    return-void
.end method

.method public load([F[I)V
    .registers 4
    .param p1, "pixels"    # [F
    .param p2, "shape"    # [I

    .line 148
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 149
    .local v0, "buffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 150
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    .line 151
    return-void
.end method

.method public load([I[I)V
    .registers 4
    .param p1, "pixels"    # [I
    .param p2, "shape"    # [I

    .line 164
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 165
    .local v0, "buffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([I[I)V

    .line 166
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    .line 167
    return-void
.end method
