.class Lorg/tensorflow/lite/support/model/GpuDelegateProxy;
.super Ljava/lang/Object;
.source "GpuDelegateProxy.java"

# interfaces
.implements Lorg/tensorflow/lite/Delegate;
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GpuDelegateProxy"


# instance fields
.field private final proxiedCloseable:Ljava/io/Closeable;

.field private final proxiedDelegate:Lorg/tensorflow/lite/Delegate;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "instance"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->proxiedCloseable:Ljava/io/Closeable;

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/tensorflow/lite/Delegate;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->proxiedDelegate:Lorg/tensorflow/lite/Delegate;

    .line 68
    return-void
.end method

.method public static maybeNewInstance()Lorg/tensorflow/lite/support/model/GpuDelegateProxy;
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 38
    :try_start_0
    const-string v0, "org.tensorflow.lite.gpu.GpuDelegate"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "instance":Ljava/lang/Object;
    new-instance v2, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;

    invoke-direct {v2, v1}, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;-><init>(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 41
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_19
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "GpuDelegateProxy"

    const-string v2, "Failed to create the GpuDelegate dynamically."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->proxiedCloseable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    goto :goto_e

    .line 52
    :catch_6
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GpuDelegateProxy"

    const-string v2, "Failed to close the GpuDelegate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method public getNativeHandle()J
    .registers 3

    .line 62
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->proxiedDelegate:Lorg/tensorflow/lite/Delegate;

    invoke-interface {v0}, Lorg/tensorflow/lite/Delegate;->getNativeHandle()J

    move-result-wide v0

    return-wide v0
.end method
