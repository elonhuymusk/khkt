.class final enum Lorg/tensorflow/lite/support/image/ColorSpaceType$2;
.super Lorg/tensorflow/lite/support/image/ColorSpaceType;
.source "ColorSpaceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/image/ColorSpaceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# static fields
.field private static final CHANNEL_VALUE:I = 0x1


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;-><init>(Ljava/lang/String;ILorg/tensorflow/lite/support/image/ColorSpaceType$1;)V

    return-void
.end method


# virtual methods
.method convertTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 77
    invoke-static {p1}, Lorg/tensorflow/lite/support/image/ImageConversions;->convertGrayscaleTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getChannelValue()I
    .registers 2

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method getNormalizedShape([I)[I
    .registers 5
    .param p1, "shape"    # [I

    .line 87
    array-length v0, p1

    packed-switch v0, :pswitch_data_34

    .line 99
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ColorSpaceType$2;->getShapeInfoMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The provided image shape is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_26
    return-object p1

    .line 90
    :pswitch_27
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->access$100([III)[I

    move-result-object v0

    .line 91
    .local v0, "shapeWithBatch":[I
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->access$100([III)[I

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_27
        :pswitch_4
        :pswitch_26
    .end packed-switch
.end method

.method getShapeInfoMessage()Ljava/lang/String;
    .registers 2

    .line 106
    const-string v0, "The shape of a grayscale image should be (h, w) or (1, h, w, 1). "

    return-object v0
.end method

.method toBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 111
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
