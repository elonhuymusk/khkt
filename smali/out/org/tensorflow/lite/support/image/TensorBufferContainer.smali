.class final Lorg/tensorflow/lite/support/image/TensorBufferContainer;
.super Ljava/lang/Object;
.source "TensorBufferContainer.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageContainer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

.field private final colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V
    .registers 4
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .param p2, "colorSpaceType"    # Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->assertShape([I)V

    .line 43
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 44
    iput-object p2, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 45
    return-void
.end method

.method static create(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/TensorBufferContainer;
    .registers 3
    .param p0, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .param p1, "colorSpaceType"    # Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 38
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/support/image/TensorBufferContainer;-><init>(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V

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

    .line 24
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->clone()Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/tensorflow/lite/support/image/ImageContainer;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->clone()Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/tensorflow/lite/support/image/TensorBufferContainer;
    .registers 3

    .line 49
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->create(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/TensorBufferContainer;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 54
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-eq v0, v1, :cond_11

    .line 58
    sget-object v0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->TAG:Ljava/lang/String;

    const-string v1, "<Warning> TensorBufferContainer is holding a non-uint8 image. The conversion to Bitmap will cause numeric casting and clamping on the data value."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_11
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->convertTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpaceType()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getHeight([I)I

    move-result v0

    return v0
.end method

.method public getTensorBuffer(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 3
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;

    .line 73
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    if-ne v0, p1, :cond_b

    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getWidth()I
    .registers 3

    .line 78
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->colorSpaceType:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorBufferContainer;->buffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getWidth([I)I

    move-result v0

    return v0
.end method
