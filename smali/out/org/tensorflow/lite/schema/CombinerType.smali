.class public final Lorg/tensorflow/lite/schema/CombinerType;
.super Ljava/lang/Object;
.source "CombinerType.java"


# static fields
.field public static final MEAN:B = 0x1t

.field public static final SQRTN:B = 0x2t

.field public static final SUM:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-string v0, "SUM"

    const-string v1, "MEAN"

    const-string v2, "SQRTN"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/CombinerType;->names:[Ljava/lang/String;

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

    .line 13
    sget-object v0, Lorg/tensorflow/lite/schema/CombinerType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
