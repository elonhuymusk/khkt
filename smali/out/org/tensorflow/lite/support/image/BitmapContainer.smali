.class final Lorg/tensorflow/lite/support/image/BitmapContainer;
.super Ljava/lang/Object;
.source "BitmapContainer.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageContainer;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "Cannot load null bitmap."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    nop

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    const-string v1, "Only supports loading ARGB_8888 bitmaps."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method

.method static create(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/BitmapContainer;
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 37
    new-instance v0, Lorg/tensorflow/lite/support/image/BitmapContainer;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/image/BitmapContainer;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/BitmapContainer;->clone()Lorg/tensorflow/lite/support/image/BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/tensorflow/lite/support/image/BitmapContainer;
    .registers 4

    .line 49
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/image/BitmapContainer;->create(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/tensorflow/lite/support/image/ImageContainer;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/BitmapContainer;->clone()Lorg/tensorflow/lite/support/image/BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorSpaceType()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->fromBitmapConfig(Landroid/graphics/Bitmap$Config;)Lorg/tensorflow/lite/support/image/ColorSpaceType;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTensorBuffer(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 4
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;

    .line 61
    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 62
    .local v0, "buffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    iget-object v1, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lorg/tensorflow/lite/support/image/ImageConversions;->convertBitmapToTensorBuffer(Landroid/graphics/Bitmap;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    .line 63
    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/BitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
