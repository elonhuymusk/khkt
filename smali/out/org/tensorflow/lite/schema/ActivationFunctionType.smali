.class public final Lorg/tensorflow/lite/schema/ActivationFunctionType;
.super Ljava/lang/Object;
.source "ActivationFunctionType.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final RELU:B = 0x1t

.field public static final RELU6:B = 0x3t

.field public static final RELU_N1_TO_1:B = 0x2t

.field public static final SIGN_BIT:B = 0x5t

.field public static final TANH:B = 0x4t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 14
    const-string v0, "NONE"

    const-string v1, "RELU"

    const-string v2, "RELU_N1_TO_1"

    const-string v3, "RELU6"

    const-string v4, "TANH"

    const-string v5, "SIGN_BIT"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/ActivationFunctionType;->names:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lorg/tensorflow/lite/schema/ActivationFunctionType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
