.class public Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;
.super Ljava/lang/Object;
.source "ResizeWithCropOrPadOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# instance fields
.field private final output:Landroid/graphics/Bitmap;

.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "targetHeight"    # I
    .param p2, "targetWidth"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetHeight:I

    .line 50
    iput p2, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetWidth:I

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->output:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method private static transformImpl(Landroid/graphics/PointF;IIII)Landroid/graphics/PointF;
    .registers 9
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "srcH"    # I
    .param p2, "srcW"    # I
    .param p3, "dstH"    # I
    .param p4, "dstW"    # I

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-int v3, p3, p1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

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

    .line 36
    check-cast p1, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .registers 20
    .param p1, "image"    # Lorg/tensorflow/lite/support/image/TensorImage;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    .local v2, "input":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 77
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 78
    .local v4, "h":I
    iget v5, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetWidth:I

    if-le v5, v3, :cond_1c

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, "srcL":I
    move v7, v3

    .line 81
    .local v7, "srcR":I
    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 82
    .local v5, "dstL":I
    add-int v8, v5, v3

    .local v8, "dstR":I
    goto :goto_2a

    .line 84
    .end local v5    # "dstL":I
    .end local v6    # "srcL":I
    .end local v7    # "srcR":I
    .end local v8    # "dstR":I
    :cond_1c
    const/4 v6, 0x0

    .line 85
    .local v6, "dstL":I
    iget v8, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetWidth:I

    .line 86
    .restart local v8    # "dstR":I
    sub-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 87
    .local v7, "srcL":I
    add-int/2addr v5, v7

    move/from16 v17, v7

    move v7, v5

    move v5, v6

    move/from16 v6, v17

    .line 89
    .restart local v5    # "dstL":I
    .local v6, "srcL":I
    .local v7, "srcR":I
    :goto_2a
    iget v9, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetHeight:I

    if-le v9, v4, :cond_36

    .line 90
    const/4 v10, 0x0

    .line 91
    .local v10, "srcT":I
    move v11, v4

    .line 92
    .local v11, "srcB":I
    sub-int/2addr v9, v4

    div-int/lit8 v9, v9, 0x2

    .line 93
    .local v9, "dstT":I
    add-int v12, v9, v4

    .local v12, "dstB":I
    goto :goto_44

    .line 95
    .end local v9    # "dstT":I
    .end local v10    # "srcT":I
    .end local v11    # "srcB":I
    .end local v12    # "dstB":I
    :cond_36
    const/4 v10, 0x0

    .line 96
    .local v10, "dstT":I
    iget v12, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetHeight:I

    .line 97
    .restart local v12    # "dstB":I
    sub-int v11, v4, v9

    div-int/lit8 v11, v11, 0x2

    .line 98
    .local v11, "srcT":I
    add-int/2addr v9, v11

    move/from16 v17, v11

    move v11, v9

    move v9, v10

    move/from16 v10, v17

    .line 100
    .restart local v9    # "dstT":I
    .local v10, "srcT":I
    .local v11, "srcB":I
    :goto_44
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v6, v10, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .local v13, "src":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v5, v9, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    .local v14, "dst":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Canvas;

    move/from16 v16, v3

    .end local v3    # "w":I
    .local v16, "w":I
    iget-object v3, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->output:Landroid/graphics/Bitmap;

    invoke-direct {v15, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v13, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    iget-object v3, v0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->output:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    .line 104
    return-object v1
.end method

.method public getOutputImageHeight(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 109
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetHeight:I

    return v0
.end method

.method public getOutputImageWidth(II)I
    .registers 4
    .param p1, "inputImageHeight"    # I
    .param p2, "inputImageWidth"    # I

    .line 114
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetWidth:I

    return v0
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .registers 6
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "inputImageHeight"    # I
    .param p3, "inputImageWidth"    # I

    .line 119
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetHeight:I

    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->targetWidth:I

    invoke-static {p1, v0, v1, p2, p3}, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->transformImpl(Landroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
