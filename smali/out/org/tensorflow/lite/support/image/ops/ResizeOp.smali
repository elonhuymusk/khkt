.class public Lorg/tensorflow/lite/support/image/ops/ResizeOp;
.super Ljava/lang/Object;
.source "ResizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;
    }
.end annotation


# instance fields
.field private final targetHeight:I

.field private final targetWidth:I

.field private final useBilinear:Z


# direct methods
.method public constructor <init>(IILorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;)V
    .registers 5
    .param p1, "targetHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "resizeMethod"    # Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetHeight:I

    .line 52
    iput p2, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetWidth:I

    .line 53
    sget-object v0, Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;->BILINEAR:Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;

    if-ne p3, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->useBilinear:Z

    .line 54
    return-void
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

    .line 31
    check-cast p1, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .registers 6
    .param p1, "image"    # Lorg/tensorflow/lite/support/image/TensorImage;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetWidth:I

    iget v2, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetHeight:I

    iget-boolean v3, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->useBilinear:Z

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "scaled":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    .line 71
    return-object p1
.end method

.method public getOutputImageHeight(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 76
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetHeight:I

    return v0
.end method

.method public getOutputImageWidth(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 81
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetWidth:I

    return v0
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .registers 8
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "inputImageHeight"    # I
    .param p3, "inputImageWidth"    # I

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float v2, p3

    mul-float v1, v1, v2

    iget v2, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    iget v3, p0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;->targetHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
