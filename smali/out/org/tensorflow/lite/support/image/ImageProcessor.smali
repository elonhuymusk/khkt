.class public Lorg/tensorflow/lite/support/image/ImageProcessor;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
        "Lorg/tensorflow/lite/support/image/TensorImage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;)V
    .registers 2
    .param p1, "builder"    # Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;

    .line 56
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;Lorg/tensorflow/lite/support/image/ImageProcessor$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
    .param p2, "x1"    # Lorg/tensorflow/lite/support/image/ImageProcessor$1;

    .line 54
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/image/ImageProcessor;-><init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;)V

    return-void
.end method


# virtual methods
.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .registers 14
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "inputImageHeight"    # I
    .param p3, "inputImageWidth"    # I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "widths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "heights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v2, p3

    .line 72
    .local v2, "currentWidth":I
    move v3, p2

    .line 73
    .local v3, "currentHeight":I
    iget-object v4, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/tensorflow/lite/support/common/Operator;

    .line 74
    .local v5, "op":Lorg/tensorflow/lite/support/common/Operator;, "Lorg/tensorflow/lite/support/common/Operator<Lorg/tensorflow/lite/support/image/TensorImage;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    move-object v6, v5

    check-cast v6, Lorg/tensorflow/lite/support/image/ImageOperator;

    .line 77
    .local v6, "imageOperator":Lorg/tensorflow/lite/support/image/ImageOperator;
    invoke-interface {v6, v3, v2}, Lorg/tensorflow/lite/support/image/ImageOperator;->getOutputImageHeight(II)I

    move-result v7

    .line 78
    .local v7, "newHeight":I
    invoke-interface {v6, v3, v2}, Lorg/tensorflow/lite/support/image/ImageOperator;->getOutputImageWidth(II)I

    move-result v8

    .line 79
    .local v8, "newWidth":I
    move v3, v7

    .line 80
    move v2, v8

    .line 81
    .end local v5    # "op":Lorg/tensorflow/lite/support/common/Operator;, "Lorg/tensorflow/lite/support/common/Operator<Lorg/tensorflow/lite/support/image/TensorImage;>;"
    .end local v6    # "imageOperator":Lorg/tensorflow/lite/support/image/ImageOperator;
    .end local v7    # "newHeight":I
    .end local v8    # "newWidth":I
    goto :goto_12

    .line 82
    :cond_3a
    iget-object v4, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorList:Ljava/util/List;

    iget-object v5, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 83
    .local v4, "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/tensorflow/lite/support/common/Operator<Lorg/tensorflow/lite/support/image/TensorImage;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 84
    .local v5, "widthIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 85
    .local v6, "heightIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Integer;>;"
    :goto_56
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 86
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/tensorflow/lite/support/image/ImageOperator;

    .line 87
    .local v7, "imageOperator":Lorg/tensorflow/lite/support/image/ImageOperator;
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 88
    .local v8, "height":I
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 89
    .local v9, "width":I
    invoke-interface {v7, p1, v8, v9}, Lorg/tensorflow/lite/support/image/ImageOperator;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object p1

    .line 90
    .end local v7    # "imageOperator":Lorg/tensorflow/lite/support/image/ImageOperator;
    .end local v8    # "height":I
    .end local v9    # "width":I
    goto :goto_56

    .line 91
    :cond_7b
    return-object p1
.end method

.method public inverseTransform(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 12
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "inputImageHeight"    # I
    .param p3, "inputImageWidth"    # I

    .line 105
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 106
    invoke-virtual {p0, v0, p2, p3}, Lorg/tensorflow/lite/support/image/ImageProcessor;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 107
    .local v0, "p1":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 108
    invoke-virtual {p0, v1, p2, p3}, Lorg/tensorflow/lite/support/image/ImageProcessor;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v1

    .line 109
    .local v1, "p2":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    return-object v2
.end method

.method public updateNumberOfRotations(I)V
    .registers 3
    .param p1, "k"    # I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/image/ImageProcessor;->updateNumberOfRotations(II)V

    .line 166
    return-void
.end method

.method public declared-synchronized updateNumberOfRotations(II)V
    .registers 7
    .param p1, "k"    # I
    .param p2, "occurrence"    # I

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorIndex:Ljava/util/Map;

    const-class v1, Lorg/tensorflow/lite/support/image/ops/Rot90Op;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "The Rot90Op has not been added to the ImageProcessor."

    .line 186
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(ZLjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorIndex:Ljava/util/Map;

    const-class v1, Lorg/tensorflow/lite/support/image/ops/Rot90Op;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    .local v0, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "occurrence"

    invoke-static {p2, v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 194
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    .local v1, "index":I
    new-instance v2, Lorg/tensorflow/lite/support/image/ops/Rot90Op;

    invoke-direct {v2, p1}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;-><init>(I)V

    .line 196
    .local v2, "newRot":Lorg/tensorflow/lite/support/image/ops/Rot90Op;
    iget-object v3, p0, Lorg/tensorflow/lite/support/image/ImageProcessor;->operatorList:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 197
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "index":I
    .end local v2    # "newRot":Lorg/tensorflow/lite/support/image/ops/Rot90Op;
    .end local p0    # "this":Lorg/tensorflow/lite/support/image/ImageProcessor;
    .end local p1    # "k":I
    .end local p2    # "occurrence":I
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
