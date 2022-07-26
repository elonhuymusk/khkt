.class public Lorg/tensorflow/lite/support/model/Model$Options$Builder;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/model/Model$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private device:Lorg/tensorflow/lite/support/model/Model$Device;

.field private numThreads:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lorg/tensorflow/lite/support/model/Model$Device;->CPU:Lorg/tensorflow/lite/support/model/Model$Device;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->numThreads:I

    return-void
.end method

.method static synthetic access$100(Lorg/tensorflow/lite/support/model/Model$Options$Builder;)Lorg/tensorflow/lite/support/model/Model$Device;
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    .line 60
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    return-object v0
.end method

.method static synthetic access$200(Lorg/tensorflow/lite/support/model/Model$Options$Builder;)I
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    .line 60
    iget v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->numThreads:I

    return v0
.end method


# virtual methods
.method public build()Lorg/tensorflow/lite/support/model/Model$Options;
    .registers 3

    .line 75
    new-instance v0, Lorg/tensorflow/lite/support/model/Model$Options;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/lite/support/model/Model$Options;-><init>(Lorg/tensorflow/lite/support/model/Model$Options$Builder;Lorg/tensorflow/lite/support/model/Model$1;)V

    return-object v0
.end method

.method public setDevice(Lorg/tensorflow/lite/support/model/Model$Device;)Lorg/tensorflow/lite/support/model/Model$Options$Builder;
    .registers 2
    .param p1, "device"    # Lorg/tensorflow/lite/support/model/Model$Device;

    .line 65
    iput-object p1, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    .line 66
    return-object p0
.end method

.method public setNumThreads(I)Lorg/tensorflow/lite/support/model/Model$Options$Builder;
    .registers 2
    .param p1, "numThreads"    # I

    .line 70
    iput p1, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->numThreads:I

    .line 71
    return-object p0
.end method
