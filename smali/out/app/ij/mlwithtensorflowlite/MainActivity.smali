.class public Lapp/ij/mlwithtensorflowlite/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<android:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation


# instance fields
.field confidence:Landroid/widget/TextView;

.field imageSize:I

.field imageView:Landroid/widget/ImageView;

.field picture:Landroid/widget/Button;

.field result:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity;, "Lapp/ij/mlwithtensorflowlite/MainActivity<Tandroid;>;"
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 35
    const/16 v0, 0xe0

    iput v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    return-void
.end method


# virtual methods
.method public classifyImage(Landroid/graphics/Bitmap;)V
    .registers 23
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity;, "Lapp/ij/mlwithtensorflowlite/MainActivity<Tandroid;>;"
    move-object/from16 v1, p0

    .line 67
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/myapplication/ml/Model;->newInstance(Landroid/content/Context;)Lcom/example/myapplication/ml/Model;

    move-result-object v0

    .line 70
    .local v0, "model":Lcom/example/myapplication/ml/Model;
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    const/16 v5, 0xe0

    aput v5, v2, v4

    const/4 v6, 0x2

    aput v5, v2, v6

    const/4 v5, 0x3

    aput v5, v2, v5

    sget-object v7, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {v2, v7}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v2

    .line 71
    .local v2, "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    iget v7, v1, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    mul-int/lit8 v8, v7, 0x4

    mul-int v8, v8, v7

    mul-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 72
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    iget v7, v1, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    mul-int v7, v7, v7

    new-array v7, v7, [I

    .line 75
    .local v7, "intValues":[I
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v8, p1

    move-object v9, v7

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 76
    const/4 v8, 0x0

    .line 77
    .local v8, "pixel":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_51
    iget v10, v1, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    if-ge v9, v10, :cond_84

    .line 78
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_56
    iget v11, v1, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    if-ge v10, v11, :cond_81

    .line 79
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "pixel":I
    .local v11, "pixel":I
    aget v8, v7, v8

    .line 80
    .local v8, "val":I
    shr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    const v13, 0x3b808081

    mul-float v12, v12, v13

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 81
    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float v12, v12, v13

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 82
    and-int/lit16 v12, v8, 0xff

    int-to-float v12, v12

    mul-float v12, v12, v13

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 78
    .end local v8    # "val":I
    add-int/lit8 v10, v10, 0x1

    move v8, v11

    goto :goto_56

    .line 77
    .end local v10    # "j":I
    .end local v11    # "pixel":I
    .local v8, "pixel":I
    :cond_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 88
    .end local v9    # "i":I
    :cond_84
    invoke-virtual {v0, v2}, Lcom/example/myapplication/ml/Model;->process(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lcom/example/myapplication/ml/Model$Outputs;

    move-result-object v9

    .line 89
    .local v9, "outputs":Lcom/example/myapplication/ml/Model$Outputs;
    invoke-virtual {v9}, Lcom/example/myapplication/ml/Model$Outputs;->getOutputFeature0AsTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v10

    .line 91
    .local v10, "outputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    invoke-virtual {v10}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v11

    .line 92
    .local v11, "confidences":[F
    const/4 v12, 0x0

    .line 93
    .local v12, "maxPos":I
    const/4 v13, 0x0

    .line 94
    .local v13, "maxConfidence":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_93
    array-length v15, v11

    if-ge v14, v15, :cond_a3

    .line 95
    aget v15, v11, v14

    cmpl-float v15, v15, v13

    if-lez v15, :cond_a0

    .line 96
    aget v15, v11, v14

    move v13, v15

    .line 97
    move v12, v14

    .line 94
    :cond_a0
    add-int/lit8 v14, v14, 0x1

    goto :goto_93

    .line 100
    .end local v14    # "i":I
    :cond_a3
    const-string v14, "Banana"

    const-string v15, "Orange"

    const-string v4, "Pen"

    filled-new-array {v14, v15, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "classes":[Ljava/lang/String;
    iget-object v14, v1, Lapp/ij/mlwithtensorflowlite/MainActivity;->result:Landroid/widget/TextView;

    aget-object v15, v4, v12

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const-string v14, ""

    .line 104
    .local v14, "s":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b7
    array-length v3, v4

    if-ge v15, v3, :cond_f2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%s: %1.f%%\n"

    move-object/from16 v18, v2

    const/4 v1, 0x2

    .end local v2    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .local v18, "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    new-array v2, v1, [Ljava/lang/Object;

    aget-object v19, v4, v15

    const/16 v17, 0x0

    aput-object v19, v2, v17

    aget v19, v11, v15

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v16, 0x1

    aput-object v19, v2, v16

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 104
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    goto :goto_b7

    .end local v18    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .restart local v2    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    :cond_f2
    move-object/from16 v18, v2

    .line 110
    .end local v2    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .end local v15    # "i":I
    .restart local v18    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    invoke-virtual {v0}, Lcom/example/myapplication/ml/Model;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f7} :catch_f8

    .line 113
    .end local v0    # "model":Lcom/example/myapplication/ml/Model;
    .end local v4    # "classes":[Ljava/lang/String;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "intValues":[I
    .end local v8    # "pixel":I
    .end local v9    # "outputs":Lcom/example/myapplication/ml/Model$Outputs;
    .end local v10    # "outputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .end local v11    # "confidences":[F
    .end local v12    # "maxPos":I
    .end local v13    # "maxConfidence":F
    .end local v14    # "s":Ljava/lang/String;
    .end local v18    # "inputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    goto :goto_f9

    .line 111
    :catch_f8
    move-exception v0

    .line 116
    :goto_f9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 120
    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity;, "Lapp/ij/mlwithtensorflowlite/MainActivity<Tandroid;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    const/4 v0, -0x1

    if-ne p2, v0, :cond_31

    .line 121
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 122
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 123
    .local v1, "dimension":I
    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget v2, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageSize:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->classifyImage(Landroid/graphics/Bitmap;)V

    .line 129
    .end local v0    # "image":Landroid/graphics/Bitmap;
    .end local v1    # "dimension":I
    :cond_31
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity;, "Lapp/ij/mlwithtensorflowlite/MainActivity<Tandroid;>;"
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->result:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->confidence:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->imageView:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lapp/ij/mlwithtensorflowlite/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity;->picture:Landroid/widget/Button;

    .line 49
    new-instance v1, Lapp/ij/mlwithtensorflowlite/MainActivity$1;

    invoke-direct {v1, p0}, Lapp/ij/mlwithtensorflowlite/MainActivity$1;-><init>(Lapp/ij/mlwithtensorflowlite/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
