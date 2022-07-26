.class public abstract enum Lorg/tensorflow/lite/support/image/ColorSpaceType;
.super Ljava/lang/Enum;
.source "ColorSpaceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/tensorflow/lite/support/image/ColorSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final BATCH_DIM:I = 0x0

.field private static final BATCH_VALUE:I = 0x1

.field private static final CHANNEL_DIM:I = 0x3

.field public static final enum GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final HEIGHT_DIM:I = 0x1

.field public static final enum RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final WIDTH_DIM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Lorg/tensorflow/lite/support/image/ColorSpaceType$1;

    const-string v1, "RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/support/image/ColorSpaceType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 70
    new-instance v1, Lorg/tensorflow/lite/support/image/ColorSpaceType$2;

    const-string v3, "GRAYSCALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/tensorflow/lite/support/image/ColorSpaceType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 26
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/tensorflow/lite/support/image/ColorSpaceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/tensorflow/lite/support/image/ColorSpaceType;->$VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/tensorflow/lite/support/image/ColorSpaceType$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/tensorflow/lite/support/image/ColorSpaceType$1;

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/tensorflow/lite/support/image/ColorSpaceType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100([III)[I
    .registers 4
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 26
    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->insertValue([III)[I

    move-result-object v0

    return-object v0
.end method

.method static fromBitmapConfig(Landroid/graphics/Bitmap$Config;)Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 4
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 127
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType$3;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is not supported yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_27
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0

    .line 129
    :pswitch_2a
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method private static insertValue([III)[I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 192
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 193
    .local v0, "newArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p1, :cond_f

    .line 194
    aget v2, p0, v1

    aput v2, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 196
    .end local v1    # "i":I
    :cond_f
    aput p2, v0, p1

    .line 197
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 198
    add-int/lit8 v2, v1, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 200
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0
.end method

.method public static values()[Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .registers 1

    .line 26
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->$VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/support/image/ColorSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0
.end method


# virtual methods
.method assertShape([I)V
    .registers 6
    .param p1, "shape"    # [I

    .line 144
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getNormalizedShape([I)[I

    move-result-object v0

    .line 145
    .local v0, "normalizedShape":[I
    nop

    .line 146
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->isValidNormalizedShape([I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getShapeInfoMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "The provided image shape is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    return-void
.end method

.method abstract convertTensorBufferToBitmap(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
.end method

.method abstract getChannelValue()I
.end method

.method getHeight([I)I
    .registers 4
    .param p1, "shape"    # [I

    .line 173
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->assertShape([I)V

    .line 174
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getNormalizedShape([I)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method abstract getNormalizedShape([I)[I
.end method

.method abstract getShapeInfoMessage()Ljava/lang/String;
.end method

.method getWidth([I)I
    .registers 4
    .param p1, "shape"    # [I

    .line 163
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->assertShape([I)V

    .line 164
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getNormalizedShape([I)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method protected isValidNormalizedShape([I)Z
    .registers 6
    .param p1, "shape"    # [I

    .line 204
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    aget v1, p1, v2

    if-lez v1, :cond_19

    const/4 v1, 0x2

    aget v1, p1, v1

    if-lez v1, :cond_19

    const/4 v1, 0x3

    aget v1, p1, v1

    .line 207
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->getChannelValue()I

    move-result v3

    if-ne v1, v3, :cond_19

    .line 208
    return v2

    .line 210
    :cond_19
    return v0
.end method

.method abstract toBitmapConfig()Landroid/graphics/Bitmap$Config;
.end method
