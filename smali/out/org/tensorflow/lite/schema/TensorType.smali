.class public final Lorg/tensorflow/lite/schema/TensorType;
.super Ljava/lang/Object;
.source "TensorType.java"


# static fields
.field public static final BOOL:B = 0x6t

.field public static final COMPLEX128:B = 0xbt

.field public static final COMPLEX64:B = 0x8t

.field public static final FLOAT16:B = 0x1t

.field public static final FLOAT32:B = 0x0t

.field public static final FLOAT64:B = 0xat

.field public static final INT16:B = 0x7t

.field public static final INT32:B = 0x2t

.field public static final INT64:B = 0x4t

.field public static final INT8:B = 0x9t

.field public static final STRING:B = 0x5t

.field public static final UINT8:B = 0x3t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 20
    const-string v0, "FLOAT32"

    const-string v1, "FLOAT16"

    const-string v2, "INT32"

    const-string v3, "UINT8"

    const-string v4, "INT64"

    const-string v5, "STRING"

    const-string v6, "BOOL"

    const-string v7, "INT16"

    const-string v8, "COMPLEX64"

    const-string v9, "INT8"

    const-string v10, "FLOAT64"

    const-string v11, "COMPLEX128"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/TensorType;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 22
    sget-object v0, Lorg/tensorflow/lite/schema/TensorType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
