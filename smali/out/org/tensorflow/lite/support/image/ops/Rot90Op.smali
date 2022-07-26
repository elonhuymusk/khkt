.class public Lorg/tensorflow/lite/support/image/ops/Rot90Op;
.super Ljava/lang/Object;
.source "Rot90Op.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# instance fields
.field private final numRotation:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "k"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    rem-int/lit8 v0, p1, 0x4

    iput v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    .line 43
    return-void
.end method

.method private static transformImpl(Landroid/graphics/PointF;III)Landroid/graphics/PointF;
    .registers 8
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "numRotation"    # I

    .line 93
    if-nez p3, :cond_3

    .line 94
    return-object p0

    .line 95
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_12

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->y:F

    int-to-float v2, p2

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 97
    :cond_12
    const/4 v0, 0x2

    if-ne p3, v0, :cond_23

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 100
    :cond_23
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 26
    check-cast p1, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .registers 15
    .param p1, "image"    # Lorg/tensorflow/lite/support/image/TensorImage;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 57
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 58
    .local v7, "input":Landroid/graphics/Bitmap;
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    if-nez v0, :cond_9

    .line 59
    return-object p1

    .line 61
    :cond_9
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 62
    .local v8, "w":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 63
    .local v9, "h":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v0

    .line 64
    .local v10, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v8

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    int-to-float v2, v9

    mul-float v2, v2, v1

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 65
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    mul-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 66
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_32

    move v2, v8

    goto :goto_33

    :cond_32
    move v2, v9

    :goto_33
    move v11, v2

    .line 67
    .local v11, "newW":I
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3a

    move v0, v9

    goto :goto_3b

    :cond_3a
    move v0, v8

    :goto_3b
    move v12, v0

    .line 68
    .local v12, "newH":I
    int-to-float v0, v11

    mul-float v0, v0, v1

    int-to-float v2, v12

    mul-float v2, v2, v1

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "output":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    .line 71
    return-object p1
.end method

.method public getOutputImageHeight(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 76
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    move v0, p1

    goto :goto_9

    :cond_8
    move v0, p2

    :goto_9
    return v0
.end method

.method public getOutputImageWidth(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 81
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    return v0
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .registers 8
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "inputImageHeight"    # I
    .param p3, "inputImageWidth"    # I

    .line 86
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->numRotation:I

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 87
    .local v0, "inverseNumRotation":I
    invoke-virtual {p0, p2, p3}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->getOutputImageHeight(II)I

    move-result v1

    .line 88
    .local v1, "height":I
    invoke-virtual {p0, p2, p3}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->getOutputImageWidth(II)I

    move-result v2

    .line 89
    .local v2, "width":I
    invoke-static {p1, v1, v2, v0}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->transformImpl(Landroid/graphics/PointF;III)Landroid/graphics/PointF;

    move-result-object v3

    return-object v3
.end method
